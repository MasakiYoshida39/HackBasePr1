package control;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import model.Operation;

/**
 * ログイン処理を行うサーブレット
 * @author M.Takahashi
 */
@jakarta.servlet.annotation.WebServlet("/login-servlet")
public class LoginServlet extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// ログイン処理
		HttpSession session = request.getSession();	// セッションオブジェクト取得
		Operation op = new Operation();
		boolean result = op.loginProc(email, password, session);

		// 転送先設定
		String url = "select.jsp";
		if (!result) {					// エラーの場合にはログイン画面に戻す
			request.setAttribute("errorMsg", "メールアドレス または パスワードに 誤りがあります。");	
			url = "login.jsp";
		}
		
		// 転送
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
