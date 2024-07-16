package br.com.graphene.superapp.sampledynamo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import br.com.graphene.superapp.sampledynamo.dto.CreateCustomerRequest;
import br.com.graphene.superapp.sampledynamo.entity.Customer;
import br.com.graphene.superapp.sampledynamo.service.CustomerService;

import static org.springframework.http.HttpStatus.CREATED;
import static org.springframework.http.HttpStatus.OK;

@RestController
@RequestMapping("/customer")
public class CustomerController {

  private final CustomerService service;

  @Autowired
  private CustomerController(CustomerService service) {
    this.service = service;
  }

  @GetMapping("/{cpf}")
  @ResponseStatus(OK)
  public Customer fetchProductById(
      @PathVariable("cpf") String cpf
  ) {
    return service.fetchByCpf(cpf);
  }

  @PostMapping
  @ResponseStatus(CREATED)
  public void createCustomer(
      @RequestBody CreateCustomerRequest customer
  ) {
    service.createCustomer(customer.getName(), customer.getCpf());
  }
}
