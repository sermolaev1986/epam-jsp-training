package com.epam.jsp_training;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

/**
 * Gets raw json as input and converts it to html with indentation and css styles applied.
 */
public class JsonTag extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {
        StringWriter stringWriter = new StringWriter();
        getJspBody().invoke(stringWriter);
        String json = stringWriter.toString();

        json = json.replaceAll("\\{", "{<div class='json-div'>");
        json = json.replaceAll("\\}", "</div>}");
        json = json.replaceAll(",", ",<br>");

        JspWriter out = getJspContext().getOut();
        out.print(json);
    }
}
