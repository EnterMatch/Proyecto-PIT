package service;

import java.util.List;

public interface IService<T> {
	int create(T object);
	List<T> read();
	int update(T object);
	int delete(int id);
	T obtain(int id);
}
