/*
GenXQueryXTask.java: http://dev.w3.org/2007/xquery-update-10-test-suite/

Copyright (c) 2009 World Wide Web Consortium, (Massachusetts Institute of Technology,
European Research Consortium for Informatics and Mathematics, Keio University).
All Rights Reserved. This work is distributed under the W3C® Software License [1] in the
hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

[1] http://www.w3.org/Consortium/Legal/2002/copyright-software-20021231
*/


package org.w3.xqtools;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.apache.tools.ant.DirectoryScanner;
import org.apache.tools.ant.types.FileSet;
import org.apache.tools.ant.types.Mapper;
import java.util.Vector;
import java.util.Iterator;
import java.io.File;

/**
 * @author Andrew Eisenberg
 * 
 * Define a genXQueryXTask for Ant
 */

public class GenXQueryXTask extends Task {
    private String dest;

    private Vector filesets = new Vector();

    private Mapper mapper = null;

    public void execute() {

        boolean failure = false;

        // iterate over the filesets

        for (Iterator itFSets = filesets.iterator(); itFSets.hasNext();) {
            FileSet fs = (FileSet) itFSets.next();
            DirectoryScanner ds = fs.getDirectoryScanner(getProject());
            String[] includedFiles = ds.getIncludedFiles();

            // iterate over the files in the fileset

            for (int i = 0; i < includedFiles.length; i++) {

                // get the source file
                String filename = includedFiles[i];
                File source = new File(ds.getBasedir(), filename);

                // get the dest file
                String[] names = mapper.getImplementation().mapFileName(
                        filename);
                if (names.length != 1)
                    throw new BuildException("incorrect file mapping");
                File target = new File(dest, names[0]);

                // generate the XQueryX if it is necessary

                if (source.lastModified() > target.lastModified()) {
                    try {
                        GenXQueryX.generate(source.getAbsolutePath(), target
                                .getAbsolutePath());
                    } catch (UnableToGenerateXQueryX e) {
                        failure = true;
                        System.out.println(e.getMessage());
                        if (e.getCause() != null)
                            System.out.println(e.getCause().getMessage());
                        System.out.println("Error processing "
                                + source.getAbsolutePath());
                    }
                }

            }

        }

        if (failure) {
            throw new BuildException(
                    "One or more files could not be processed.");
        }
    }

    public void setDest(String dest) {
        this.dest = dest;
    }

    public void addFileset(FileSet fileset) {
        filesets.add(fileset);
    }

    public void addMapper(Mapper mapper) {
        this.mapper = mapper;
    }

}
