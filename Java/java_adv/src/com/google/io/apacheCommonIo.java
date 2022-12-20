package com.google.io;

import org.apache.commons.io.FileUtils;
import org.junit.Test;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class apacheCommonIo {
    @Test
    public void test1() throws IOException {
        File file = new File("src/com/google/io/source/5.txt");
        if (!file.exists()) {
            file.createNewFile();
        }
        FileUtils.writeLines(file, new ArrayList(Collections.singleton("Hello CommonIo")), true);
    }
}
