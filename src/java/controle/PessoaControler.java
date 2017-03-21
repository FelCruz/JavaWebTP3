/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.UsuarioDao;
import entidade.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author DesenvolvedorJava
 */
@Controller
public class PessoaControler {
    
    @RequestMapping(value = "iniciaCadastroPessoa.htm", method = RequestMethod.GET)
    public String iniciarCadastropessoa(@ModelAttribute("usuario") Usuario usuario) {
        return "cadastroPessoa";
    }
    
    @RequestMapping(value = "cadastrarPessoa.htm", method = RequestMethod.POST)
    public String cadastrarPessoa(@ModelAttribute("usuario") Usuario usuario) {
        UsuarioDao dao = new UsuarioDao();
        dao.cadastrarPessoa(usuario);
        return "sucesso";
    }
    
}
