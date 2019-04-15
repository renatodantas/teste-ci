package com.rexus.teste.ci.dependencia;

import org.junit.Assert;
import org.junit.Test;

public class DependenciaTest {

	@Test
	public void test_Not_null() {
		Assert.assertNotNull(Dependencia.getNome());
	}

	@Test
	public void test_Not_empty() {
		Assert.assertNotEquals(Dependencia.getNome().trim(), "");
	}
	
	@Test
	public void test_OK() {
		Assert.assertEquals(Dependencia.getNome(), "Dependência");
	}
}
