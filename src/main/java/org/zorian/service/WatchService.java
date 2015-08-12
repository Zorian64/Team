package org.zorian.service;
import java.util.List;

import org.zorian.model.Watch;

public interface WatchService {
	public void addWatch(Watch watch);

	public void updateWatch(Watch watch);

	public Watch getWatch(int id);

	public void deleteWatch(int id);

	public List<Watch> getWatches();
}