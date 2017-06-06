package com.boaglio.examples.json;

import java.util.List;

public class Region {

	private String region;
	private List<JUG> jugs;

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public List<JUG> getJugs() {
		return jugs;
	}

	public void setJugs(List<JUG> jugs) {
		this.jugs = jugs;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((region == null) ? 0 : region.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Region other = (Region) obj;
		if (region == null) {
			if (other.region != null)
				return false;
		} else if (!region.equals(other.region))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Region [region=" + region + ", jugs=" + jugs + "]";
	}

}
