package org.zorian.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.zorian.model.Watch;

@Repository
public class WatchDAOImpl implements WatchDAO {
	@Autowired
	private SessionFactory sessionFactory;

	private Session currentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void addWatch(Watch watch) {
		currentSession().save(watch);
	}

	@Override
	public void updateWatch(Watch watch) {
		Watch watchToUpdate = getWatch(watch.getId());
		watchToUpdate.setBrend(watch.getBrend());
		watchToUpdate.setModel(watch.getModel());
		watchToUpdate.setPrice(watch.getPrice());
		watchToUpdate.setColor(watch.getColor());
		watchToUpdate.setPicture(watch.getPicture());
		watchToUpdate.setFileName(watch.getFileName());;
		currentSession().update(watchToUpdate);

	}

	@Override
	public Watch getWatch(int id) {
		Watch watch = (Watch) currentSession().get(Watch.class, id);
		return watch;
	}

	@Override
	public void deleteWatch(int id) {
		Watch watch = getWatch(id);
		if (watch != null)
			currentSession().delete(watch);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Watch> getWatches() {
		return currentSession().createQuery("from Watch").list();
	}

}
