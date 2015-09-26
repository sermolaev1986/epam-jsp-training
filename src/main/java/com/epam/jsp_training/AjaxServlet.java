package com.epam.jsp_training;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.CopyOnWriteArraySet;

/**
 *
 */
@WebServlet(value = "/ajax")
public class AjaxServlet extends HttpServlet {

    public static final String DICTIONARY_LOCATION = "/WEB-INF/dictionary.txt";

    private Collection<String> strings = new CopyOnWriteArraySet<>();

    @Override
    public void init() throws ServletException {
        Collection<String> tempList = new HashSet<>();
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(
                getServletContext().getResourceAsStream(DICTIONARY_LOCATION)))) {
            String line;
            while ((line = reader.readLine()) != null) {
                tempList.add(line);
            }
        } catch (IOException e) {
            throw new ServletException(e);
        }
        strings.addAll(tempList);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        for (String string : strings) {
            resp.getWriter().println(string);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String word = req.getParameter("word");
        if (word == null || word.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }

        if (!strings.add(word)) {
            resp.sendError(HttpServletResponse.SC_CONFLICT);
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            final String word = req.getParameter("word");
        if (word == null || word.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }

        if (!strings.remove(word)) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
