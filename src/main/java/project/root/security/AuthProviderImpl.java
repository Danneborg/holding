package project.root.security;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import project.root.ldapcheck.LdapCheck;
import project.root.model.User;
import project.root.repository.others.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;


@Component
public class AuthProviderImpl implements AuthenticationProvider {

    @Autowired
    UserRepository userRepository;

    private LdapCheck ldapCheck = new LdapCheck();

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String name = authentication.getName();

        User u = userRepository.findByName(name);

        if (u == null) {
            throw new UsernameNotFoundException("user not found");
        }

        if (!ldapCheck.checkUser(u.getName().toLowerCase(), authentication.getCredentials().toString())) {
            throw new BadCredentialsException("Bad credentials");
        }

        List<GrantedAuthority> authorities = new ArrayList<>();

        authorities.add(new SimpleGrantedAuthority(u.getRole()));

        return new UsernamePasswordAuthenticationToken(u, null, authorities);
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(UsernamePasswordAuthenticationToken.class);
    }

}
