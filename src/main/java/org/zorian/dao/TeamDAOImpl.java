package org.zorian.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.zorian.model.Team;

@Repository
public class TeamDAOImpl implements TeamDAO {
	@Autowired
	private SessionFactory sessionFactory;

	private Session currentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void addTeam(Team team) {
		currentSession().save(team);
	}
	@Override
	public void updateTeam(Team team) {
		Team teamToUpdate = getTeam(team.getId());
		teamToUpdate.setName(team.getName());
		teamToUpdate.setRating(team.getRating());
		currentSession().update(teamToUpdate);

	}
	@Override
	public Team getTeam(int id) {
		Team team = (Team) currentSession().get(Team.class, id);
		return team;
	}
	@Override
	public void deleteTeam(int id) {
		Team team = getTeam(id);
		if (team != null)
			currentSession().delete(team);
	}
	@Override
	@SuppressWarnings("unchecked")
	public List<Team> getTeams() {
		return currentSession().createQuery("from Team").list();
	}

}
