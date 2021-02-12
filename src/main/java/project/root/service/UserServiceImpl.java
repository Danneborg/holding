package project.root.service;


import project.root.model.User;
import project.root.repository.others.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService {


    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> getAll() {
        return userRepository.findAll();
    }

    @Override
    public User getbyName(String name) {
        return userRepository.findByName(name);
    }

    @Override
    @Transactional
    public void add(User user) {
//        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepository.save(user);
    }

}
