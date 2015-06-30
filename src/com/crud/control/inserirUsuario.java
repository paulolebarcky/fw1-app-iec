package com.crud.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.crud.dao.UsuarioDAO;
import com.crud.model.Usuario;

/**
 * Servlet implementation class inserirUsuario
 */
@WebServlet("/inserirUsuario")
public class inserirUsuario extends HttpServlet {
       
	private static final long serialVersionUID = 8422632213796190589L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public inserirUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario user = new Usuario();
		user.setNome(request.getParameter("name"));
		user.setCpf(request.getParameter("cpf"));
		user.setTelefone(request.getParameter("phone"));
		user.setEmail(request.getParameter("email"));
        user.setLogin(request.getParameter("login"));
        user.setSenha(request.getParameter("senha"));
		
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		usuarioDAO.create(user);
		
		response.sendRedirect("sucessoCadastro.jsp");
	}
}
