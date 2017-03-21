/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import entidade.Usuario;
import dao.UsuarioDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author DesenvolvedorJava
 */
@Controller
public class LoginControler {

    @RequestMapping(value = "/login.htm", method = RequestMethod.GET)
    public String iniciarLogin(@ModelAttribute("usuario") Usuario login, UsuarioDao dao, HttpSession session) {
        String token = (String) session.getAttribute("token");
        if (token != null && token.equals("aprovado")) {
            return "index";
        }

        return "login";
    }

    @RequestMapping(value = "/efetuarLogin.htm", method = RequestMethod.POST)
    public String efetuarLogin(@ModelAttribute("usuario") Usuario usuario, UsuarioDao dao, HttpServletRequest request, HttpSession session) {       
               
        for (Usuario u : dao.consultarTodosUsuarios()) {
            if (usuario.getLogin().equals(u.getLogin()) && usuario.getSenha().equals(u.getSenha())) {
                session.setAttribute("token", "aprovado");
                return "index";
            }

        }
        request.setAttribute("mensagem", "Usuario Invalido");
        return "login";
    }
}
