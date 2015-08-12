package org.zorian.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import org.zorian.dao.WatchDAO;
import org.zorian.model.Watch;

@Service
@Transactional
public class WatchServiceImp implements WatchService {
	@Autowired
	private WatchDAO watchDAO;

	@Override
	public void addWatch(Watch watch) {
		watchDAO.addWatch(watch);
	}

	@Override
	public void updateWatch(Watch watch) {
		watchDAO.updateWatch(watch);
	}

	@Override
	public Watch getWatch(int id) {
		return watchDAO.getWatch(id);
	}

	@Override
	public void deleteWatch(int id) {
		watchDAO.deleteWatch(id);
	}

	@Override
	public List<Watch> getWatches() {
		return watchDAO.getWatches();
	}

}
