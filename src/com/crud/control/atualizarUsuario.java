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
 * Servlet implementation class atualizarUsuario
 */
@WebServlet("/atualizarUsuario")
public class atualizarUsuario extends HttpServlet {       
	private static final long serialVersionUID = 6163170016552254044L;
	/**
     * @see HttpServlet#HttpServlet()
     */
    public atualizarUsuario() {
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
		user.setId(Integer.parseInt(request.getParameter("id")));
		user.setNome(request.getParameter("name"));
		user.setCpf(request.getParameter("cpf"));
		user.setTelefone(request.getParameter("phone"));
		user.setEmail(request.getParameter("email"));
		
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		usuarioDAO.update(user);
		
		response.sendRedirect("index.jsp");
	}

}
