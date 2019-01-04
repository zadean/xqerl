/*
GenXQueryX.java: http://dev.w3.org/2007/xquery-update-10-test-suite/

Copyright (c) 2009 World Wide Web Consortium, (Massachusetts Institute of Technology,
European Research Consortium for Informatics and Mathematics, Keio University).
All Rights Reserved. This work is distributed under the W3C® Software License [1] in the
hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

[1] http://www.w3.org/Consortium/Legal/2002/copyright-software-20021231
*/


package org.w3.xqtools;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.xqparser.ParseException;
import org.w3c.xqparser.SimpleNode;
import org.w3c.xqparser.XParser;
import org.w3c.xqparser.XQueryXConverter;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/**
 * @author Andrew Eisenberg
 * 
 * Generate an XQueryX document from an XQuery expression
 * 
 */

public class GenXQueryX {

    public static String SCHEMA_LANGUAGE = "http://java.sun.com/xml/jaxp/properties/schemaLanguage";

    public static String XML_SCHEMA = "http://www.w3.org/2001/XMLSchema";

    public static String SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";

    public static void main(String[] args) {
        // check arguments

        if (args.length != 2) {
            System.out.println("Usage: XQueryXUpdate infile outfile");
            System.exit(-1);
        }

        try {
            generate(args[0], args[1]);
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(-1);
        }
    }

    public static void generate(String inFileName, String outFileName)
            throws UnableToGenerateXQueryX {

        SimpleNode tree = null;
        ByteArrayOutputStream baos = null;

        // create parser

        DocumentBuilder builder = null;
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        factory.setValidating(true);
        factory.setAttribute(SCHEMA_LANGUAGE, XML_SCHEMA);
        File updateSchema = new File("temp/xquery-update-10-xqueryx.xsd");
        if (!updateSchema.exists()) {
            throw new UnableToGenerateXQueryX(
                    "XQuery Update schema file is missing");
        }
        factory.setAttribute(SCHEMA_SOURCE, updateSchema);

        try {
            builder = factory.newDocumentBuilder();

            builder.setErrorHandler(new ErrorHandler() {

                public void warning(SAXParseException arg0) throws SAXException {
                    throw arg0;
                }

                public void error(SAXParseException arg0) throws SAXException {
                    throw arg0;
                }

                public void fatalError(SAXParseException arg0)
                        throws SAXException {
                    throw arg0;
                }
            });

        } catch (ParserConfigurationException e) {
            throw new UnableToGenerateXQueryX("Unknown error, e");
        }

        // parse the XQuery expression and generate XQueryX

        StringBuffer xquery = null;
        try {
            xquery = readFile(new File(inFileName));
        } catch (FileNotFoundException e1) {
            throw new UnableToGenerateXQueryX("File " + inFileName
                    + " not found", e1);
        } catch (IOException e) {
            throw new UnableToGenerateXQueryX("Unknown problem", e);
        }

        try {
            XParser parser = new XParser(new StringReader(xquery.toString()));
            tree = parser.START();
            if (null == tree) {
                throw new UnableToGenerateXQueryX("Cannot parse query.");
            }
            {
                baos = new ByteArrayOutputStream(62 * 1024);
                PrintStream ps = new PrintStream(baos);
                XQueryXConverter trans = new XQueryXConverter();
                trans.transformNoEncodingException(tree, null, ps);
            }
        } catch (ParseException e) {
            throw new UnableToGenerateXQueryX("Unable to parse query", e);
        } catch (Error e) {
            throw new UnableToGenerateXQueryX("Unable to parse query", e);
        } catch (UnsupportedEncodingException e) {
            throw new UnableToGenerateXQueryX("Unable to parse query", e);
        } catch (Exception e) {
            throw new UnableToGenerateXQueryX("Unable to parse query", e);
        }

        // write out the XQueryX

        FileWriter outFile = null;
        try {
            outFile = new FileWriter(outFileName);
            outFile.write(baos.toString());
            outFile.flush();
            outFile.close();
        } catch (IOException e) {
            throw new UnableToGenerateXQueryX("Unable to generate XQueryX", e);

        }

    }

    public static StringBuffer readFile(File file)
            throws FileNotFoundException, IOException {
        FileInputStream fis = null;
        InputStreamReader isr = null;
        StringBuffer sb = new StringBuffer();
        int c;

        try {
            fis = new FileInputStream(file);
            isr = new InputStreamReader(fis, Charset.forName("UTF-8"));
            while ((c = isr.read()) != -1) {
                sb.append((char) c);
            }
        } finally {
            try {
                if (isr != null)
                    isr.close();
            } catch (IOException e) {
            }
            try {
                if (fis != null)
                    fis.close();
            } catch (IOException e) {
            }
        }

        return sb;

    }

}