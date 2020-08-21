#!/usr/bin/env python3

lightTheme = 'Vildt Solarized Light Theme'
darkTheme = 'Vildt Solarized Dark Theme'

lystFra = 9 # fra og med
lystTil = 17 # til og med


import asyncio
import iterm2
import datetime

lastTheme = ''

async def main(connection):
	global lastTheme

	async with iterm2.VariableMonitor(connection, iterm2.VariableScopes.APP, "effectiveTheme", None) as mon:
		while True:
			now = datetime.datetime.now()
			hour = now.hour

			theme = darkTheme

			if hour >= lystFra and hour <= lystTil:
				theme = lightTheme

			if theme == lastTheme:
				continue

			lastTheme = theme
			preset = await iterm2.ColorPreset.async_get(connection, theme)

			# Update the list of all profiles and iterate over them.
			profiles = await iterm2.PartialProfile.async_query(connection)
			for partial in profiles:
				# Fetch the full profile and then set the color preset in it.
				profile = await partial.async_get_full_profile()
				await profile.async_set_color_preset(preset)
				print(theme)

iterm2.run_forever(main)