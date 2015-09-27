package com.epam.jsp_training;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

/**
 *
 */
public class JsonTag extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();

        StringWriter stringWriter = new StringWriter();
        getJspBody().invoke(stringWriter);
        String json = stringWriter.toString();

        json = json.replaceAll("\\{", "{<div class='inner'>");
        json = json.replaceAll("\\}", "</div>}");
        json = json.replaceAll(",", ",<br>");
        out.print(json);
    }


}
