package project.root.service;

import project.root.model.User;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public interface UserService {

    public List<User> getAll();

    public User getbyName(String name);

    public void add(User user);

}
