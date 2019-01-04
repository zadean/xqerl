/*
UnableToGenerateXQueryX.java: http://dev.w3.org/2007/xquery-update-10-test-suite/

Copyright (c) 2009 World Wide Web Consortium, (Massachusetts Institute of Technology,
European Research Consortium for Informatics and Mathematics, Keio University).
All Rights Reserved. This work is distributed under the W3C® Software License [1] in the
hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

[1] http://www.w3.org/Consortium/Legal/2002/copyright-software-20021231
*/

package org.w3.xqtools;

public class UnableToGenerateXQueryX extends java.lang.Exception {
    
    public UnableToGenerateXQueryX (String message) {
        super(message);
    }

    public UnableToGenerateXQueryX (String message, Throwable cause) {
        super(message, cause);
    }
}
