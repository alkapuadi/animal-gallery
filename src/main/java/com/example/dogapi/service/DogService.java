package com.example.dogapi.service;

import com.example.dogapi.entity.Dog;
import com.example.dogapi.repository.DogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DogService {

    @Autowired
    private DogRepository dogRepository;

    public List<Dog> getAllDogs() {
        return dogRepository.findAll();
    }

    public Optional<Dog> getDogById(Long id) {
        return dogRepository.findById(id);
    }

    public Dog addDog(Dog dog) {
        return dogRepository.save(dog);
    }

    public Dog updateDog(Long id, Dog updatedDog) {
        return dogRepository.findById(id).map(dog -> {
            dog.setName(updatedDog.getName());
            dog.setDescription(updatedDog.getDescription());
            dog.setBreed(updatedDog.getBreed());
            dog.setAge(updatedDog.getAge());
            dog.setActiveDate(updatedDog.getActiveDate());
            return dogRepository.save(dog);
        }).orElse(null);
    }

    public boolean deleteDog(Long id) {
        return dogRepository.findById(id).map(dog -> {
            dogRepository.delete(dog);
            return true;
        }).orElse(false);
    }

    public List<Dog> getDogsByBreed(String breed) {
        return dogRepository.findByBreed(breed);
    }

    public List<Dog> getDogsByNameContains(String name) {
        return dogRepository.findByNameContainingIgnoreCase(name);
    }
}
