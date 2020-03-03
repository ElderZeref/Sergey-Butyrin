package ua.prog.kiev;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

public class StatServlet extends javax.servlet.http.HttpServlet {
    private static AtomicInteger countKind = new AtomicInteger(0);
    private static AtomicInteger countClever = new AtomicInteger(0);
    private static AtomicInteger countBeauty = new AtomicInteger(0);
    private static AtomicInteger countEnvy = new AtomicInteger(0);
    private static AtomicInteger countAnger = new AtomicInteger(0);
    private static AtomicInteger countLie = new AtomicInteger(0);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String area = request.getParameter("gender");
        String pet = request.getParameter("marriage");

        if (area != null && area.equals("dobrota"))
            countKind.incrementAndGet();
        if (area != null && area.equals("um"))
            countClever.incrementAndGet();
        if (area != null && area.equals("krasota"))
            countBeauty.incrementAndGet();
        if (pet != null && pet.equals("envy"))
            countEnvy.incrementAndGet();
        if (pet != null && pet.equals("angry"))
            countAnger.incrementAndGet();
        if (pet != null && pet.equals("lie"))
            countLie.incrementAndGet();

        request.setAttribute("dobrota", countKind);
        request.setAttribute("um", countClever);
        request.setAttribute("krasota", countBeauty);
        request.setAttribute("envy", countEnvy);
        request.setAttribute("angry", countAnger);
        request.setAttribute("lie", countLie);

        RequestDispatcher rD =
                getServletContext().getRequestDispatcher("/Statistic.jsp");
        rD.forward(request, response);

    }
}