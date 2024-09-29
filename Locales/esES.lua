local L = BigWigsAPI:NewLocale("BigWigs", "esES")
if not L then return end

L.tempNPMsg = "Nuestros temporizadores de placas de nombre de la temporada 1 están activos."

-- Core.lua
L.berserk = "Rabia"
L.berserk_desc = "Muestra un contador que avisa cuando el jefe entrará en rabia"
L.altpower = "Indicador de poder alternativo"
L.altpower_desc = "Muestra la ventana de poder alternativo, que indica la cantidad de poder alternativo que tienen los miembros de tu grupo."
L.infobox = "Caja de información"
L.infobox_desc = "Muestra un marco con información relacionada con el encuentro."
L.stages = "Fases"
L.stages_desc = "Activa funciones relacionadas con varias etapas/fases del jefe como cambios de etapa, barras de temporizador de duración de etapa, etc."
L.warmup = "Calentamiento"
L.warmup_desc = "Tiempo hasta que el combate con el jefe comience."
L.proximity = "Visualizar proximidad"
L.proximity_desc = "Muestra la ventana de proximidad cuando sea apropidada para este encuentro, lista los jugadores que están demasiado cerca tuya."
L.adds = "Esbirros"
L.adds_desc = "Activa funciones relacionadas con los esbirros que aparecerán durante un encuentro con un jefe."
L.health = "Salud"
L.health_desc = "Activa funciones para mostrar varias informaciones de salud durante un encuentro con un jefe."

L.already_registered = "|cffff0000ATENCIóN:|r |cff00ff00%s|r (|cffffff00%s|r) ya existe ese módulo en BigWigs, pero sin embargo está intentando registrarlo de nuevo. Esto normalmente ocurre cuando tienes varias copias de este módulo en tu carpeta de addons posiblemente por una actualización fallida. Es recomendable que borres la carpeta de BigWigs y lo reinstales por completo."

-- Loader / Options.lua
L.okay = "Aceptar"
L.officialRelease = "Estás usando la versión oficial de BigWigs %s (%s)"
L.alphaRelease = "Estás usando la VERSIÓN ALFA de BigWigs %s (%s)"
L.sourceCheckout = "Estás usando la versión de BigWigs %s directamente del repositorio."
L.littlewigsOfficialRelease = "Estás usando la versión oficial de LittleWigs (%s)"
L.littlewigsAlphaRelease = "Estás usando la VERSIÓN ALFA de LittleWigs (%s)"
L.littlewigsSourceCheckout = "Estás usando la versión de LittleWigs directamente del repositorio."
L.guildRelease = "Estás usando la vestión de BigWigs %d hecha para tu hermandad, basada en la versión %d del addon oficial."
L.getNewRelease = "Tu BigWigs está desfasado (/bwv) pero puedes actualizarlo fácilmente con el cliente de CurseForge. También puedes actualizarlo manualmente desde curseforge.com o wowinterface.com."
L.warnTwoReleases = "Tu BigWigs está 2 versiones desfasado! Tu versión puede tener fallos, faltarle características, o temporizadores incorrectos. Es muy recomendable que lo actualices."
L.warnSeveralReleases = "|cffff0000Tu BigWigs está desfasado %d actualizaciones!! Te recomendamos MUCHÍSIMO que lo actualices cuanto antes para prevenir problemas de sincronización con otros jugadores!|r"
L.warnOldBase = "Estás usando un versión de hermandad de BigWigs (%d), pero tu versión de base (%d) está desfasada de %d actualizaciones. Ésto puede causar problemas."

L.tooltipHint = "|cffeda55fClic derecho|r para acceder a las opciones."
L.activeBossModules = "Módulos de jefes activos:"

L.oldVersionsInGroup = "Hay gente en tu grupo con versiones antiguas o sin BigWigs. Más detalles con /bwv." -- XXX needs updated
L.upToDate = "Al día:"
L.outOfDate = "Desactualizado"
L.dbmUsers = "Jugadores con DBM:"
L.noBossMod = "Sin boss mod:"
L.offline = "Desconectado"

L.missingAddOnPopup = "No se encuentra el addon |cFF436EEE%s|r !"
L.missingAddOnRaidWarning = "No se encuentra el addon |cFF436EEE%s|r ! No se mostrarán temporizadores en esta zona."
L.outOfDateAddOnPopup = "El addon |cFF436EEE%s|r está desactualizado!"
L.outOfDateAddOnRaidWarning = "El addon |cFF436EEE%s|r está desactualizado. Puede tener errores, funciones faltantes o temporizadores completamente incorrectos."
L.disabledAddOn = "Tienes el addon |cFF436EEE%s|r deshabilitado, los contadores no se mostraran."
L.removeAddOn = "Por favor elimina '|cFF436EEE%s|r' ya que está siendo reemplazado por '|cFF436EEE%s|r'."
L.alternativeName = "%s (|cFF436EEE%s|r)"
L.outOfDateContentPopup = "¡ADVERTENCIA!\nHas actualizado |cFF436EEE%s|r pero también necesitas actualizar el addon principal |cFF436EEEBigWigs|r.\nIgnorar esto resultará en un mal funcionamiento."
L.outOfDateContentRaidWarning = "|cFF436EEE%s|r requiere la versión %d del addon principal |cFF436EEEBigWigs|r para funcionar correctamente, pero estás en la versión %d."

L.expansionNames = {
	"Classic", -- Classic
	"The Burning Crusade", -- The Burning Crusade
	"Wrath of the Lich King", -- Wrath of the Lich King
	"Cataclysm", -- Cataclysm
	"Mists of Pandaria", -- Mists of Pandaria
	"Warlords of Draenor", -- Warlords of Draenor
	"Legion", -- Legion
	"Battle for Azeroth", -- Battle for Azeroth
	"Shadowlands", -- Shadowlands
	"Dragonflight", -- Dragonflight
	"The War Within", -- The War Within
}
L.littleWigsExtras = {
	["LittleWigs_Delves"] = "Delves",
	["LittleWigs_CurrentSeason"] = "Temporada actual",
}

-- Media.lua (These are the names of the sounds in the dropdown list in the "sounds" section)
L.Beware = "Cuidado (Algalon)"
L.FlagTaken = "Bandera tomada (JcJ)"
L.Destruction = "Destrucción (Kil'jaeden)"
L.RunAway = "Corre pequeña (El Lobo Feroz)"
L.spell_on_you = "BigWigs: Hechizo sobre tí"
L.spell_under_you = "BigWigs: Hechizo debajo de tí"

-- Options.lua
L.options = "Opciones"
L.optionsKey = "ID: %s" -- The ID that messages/bars/options use
L.raidBosses = "Jefes de Banda"
L.dungeonBosses = "Jefes de Mazmorras"
L.introduction = "Bienvenido a BigWigs. Abróchese el cinturón y a comer cacahuetes mientras disfrutas del paseo. De manera no intrusiva te ayudará a preparar ese nuevo encuentro de banda como una cena de 7 platos para tu grupo de banda."
L.sound = "Sonido"
L.minimapIcon = "Icono del minimapa"
L.minimapToggle = "Cambia entre mostrar/ocultar el icono en el minimapa."
L.compartmentMenu = "Sin icono de compartimento"
L.compartmentMenu_desc =  "Desactivar esta opcion hará que BigWigs no se muestre en el menu de compartimiento de addons. Recomendamos dejar esta opción activada."
L.configure = "Configurar"
L.resetPositions = "Reiniciar posiciones"
L.colors = "Colores"
L.selectEncounter = "Seleccionar encuentro"
L.privateAuraSounds = "Sonidos de Aura Privada"
L.privateAuraSounds_desc = "Las auras privadas no pueden ser rastreadas normalmente, pero puedes configurar un sonido para que se reproduzca cuando seas el objetivo de la habilidad."
L.listAbilities = "Listar las habilidades en el chat"

L.dbmFaker = "Fingir que estoy usando DBM"
L.dbmFakerDesc = "Si un usuario de DBM hace un chequeo de versión para ver quien está usando DBM, ellos te verán a ti en la lista. Muy útil para guilds que forzan a usar DBM."
L.zoneMessages = "Mostrar mensajes de la zona"
L.zoneMessagesDesc = "Desactivando esto dejará de mostrar mensajes cuando entres en una zona donde BigWigs tenga un modulo, pero no lo tengas instalado. Recomendamos que dejes esto activo pues será la única notificación que recibirás si creamos módulos nuevos para una zona que encontréis útil"
L.englishSayMessages = "Mensajes de texto solo en inglés"
L.englishSayMessagesDesc = "Todos los mensajes de 'decir' y 'gritar' que envíes en el chat durante un encuentro con un jefe siempre estarán en inglés. Puede resultar útil si estás con un grupo de jugadores que mezclan idiomas."

L.slashDescTitle = "|cFFFED000Atajo de comandos:|r"
L.slashDescPull = "|cFFFED000/pull:|r Envia una cuenta atrás de puleo a tu raid."
L.slashDescBreak = "|cFFFED000/break:|r Crea un temporizador de descanso para tu raid."
L.slashDescRaidBar = "|cFFFED000/raidbar:|r Envia una barra personalizada a tu raid."
L.slashDescLocalBar = "|cFFFED000/localbar:|r Crea una barra personal que solo puedes ver tu."
L.slashDescRange = "|cFFFED000/range:|r Abre el indicador de rango."
L.slashDescVersion = "|cFFFED000/bwv:|r Realiza un chequeo de versiónes de BigWigs."
L.slashDescConfig = "|cFFFED000/bw:|r Abre la configuración de BigWigs."

L.gitHubDesc = "|cFF33FF99BigWigs es de código abierto alojado en GitHub. Siempre estamos buscando gente para ayudarnos y cualquiera es bienvenido para inspeccionar nuestro código, hacer contribuciones y reportar errores. BigWigs es tan genial a día de hoy en gran parte por la gran comunidad de WoW que nos ayuda.|r"

L.BAR = "Barras"
L.MESSAGE = "Mensajes"
L.ICON = "Icono"
L.SAY = "Decir"
L.FLASH = "Destello"
L.EMPHASIZE = "Enfatizar"
L.ME_ONLY = "En mi únicamente"
L.ME_ONLY_desc = "Cuando activas esta opción los mensajes para esta habilidad solo serán mostrados cuando te afecten. Por ejemplo, 'Bomba: Jugador' solo se mostrará si está en ti."
L.PULSE = "Pulso"
L.PULSE_desc = "Para complementar el flash de pantalla, también puedes tener un icono relacionado con esta habilidad especifica que se mostrará momentáneamente en el medio de la pantalla para tratar de atraer tu atención."
L.MESSAGE_desc = "La mayoria de las abilidades de los encuentros se presentan con uno o más mensajes que BigWigs mostrará en tu pantalla. Si desactivas esta opción, ningún mensaje de esta opción, si lo hay, será mostrado en pantalla."
L.BAR_desc = "Las barras serán mostradas en el momento apropiado. Si esta habilidad está acompañada por una barra que quieres ocultar, desactiva esta opción."
L.FLASH_desc = "Algunas habilidades son más importantes que otras. Si quieres ver un flash cuando esta habilidad sea inminente o usada, activa esta opción."
L.ICON_desc = "BigWigs puede marcar personajes afectados por habilidades con un icono. Esto hace que sea más fácil detectarlos."
L.SAY_desc = "Los bocadillos de chat son fáciles de ver. BigWigs usará un mensaje para anunciar a la gente cercana sobre un efecto en ti."
L.EMPHASIZE_desc = "Activando esto enfatizará algunos mensajes asociados con esta habilidad, haciéndolos más grandes y visibles. Puedes ajustar el tamaño y la fuente de los mensajes enfatizados en las opciones principales debajo de \"Mensajes\"."
L.PROXIMITY = "Ventana de proximidad"
L.PROXIMITY_desc = "La ventana de proximidad se ajustará especificamente para esa habilidad para que sepas de un vistazo si estás a salvo o no."
L.ALTPOWER = "Indicador de poder alternativo"
L.ALTPOWER_desc = "Algunos encuentros usarán la mecánica de poder alternativo en jugadores de tu grupo. El indicador de poder alternativo proporciona un breve repaso sobre quien tiene menos/más poder alternativo, lo que puede ser útil para tácticas o asignaciones especificas."
L.TANK = "Tanques únicamente"
L.TANK_desc = "Algunas habilidades son importantes solo para tanques. Si quieres ver advertencias para este tipo de habilidades independientemente de tu rol, desactiva esta opción."
L.HEALER = "Sanadores únicamente"
L.HEALER_desc = "Algunas habilidades sólo son importantes para sanadores. Si quieres ver alertas para este tipo de habilidades independientemente de tu rol, desactiva esta opción."
L.TANK_HEALER = "Sólo Tanques y Sanadores"
L.TANK_HEALER_desc = "Algunas habilidades son importantes solo para tanques y sanadores. Si quieres ver advertencias para este tipo de habilidades independientemente de tu rol, desactiva esta opción."
L.DISPEL = "Disipables únicamente"
L.DISPEL_desc = "Si quieres ver avisos para esta habilidad incluso cuando no puedas disiparla, desactiva esta opción."
L.VOICE = "Voz"
L.VOICE_desc = "Si tienes un plugin de voz instalado, esta opción le permitirá reproducir un archivo de sonido que hable en este aviso para ti."
L.COUNTDOWN = "Cuenta atrás"
L.COUNTDOWN_desc = "Si está activo, una cuenta atrás vocal y visual será agregada para los últimos 5 segundos. Imagina a alguien contando hacia atrás \"5... 4... 3... 2... 1...\" con un número grande en el medio de la pantalla."
L.CASTBAR_COUNTDOWN = "Cuenta atrás (solo para barras de lanzamiento)"
L.CASTBAR_COUNTDOWN_desc = "Si está activo, una cuenta atrás vocal y visual se añadirá para los ultimos 5 segundos de las barras de lanzamiento."
L.INFOBOX = L.infobox
L.INFOBOX_desc = L.infobox_desc
L.SOUND = "Sonido"
L.SOUND_desc = "Las habilidades de jefes habitualmente reproducen sonidos para ayudarte con ellas. Si desactivas esta opción, ningún sonido adjunto sonará."
L.CASTBAR = "Barras de lanzamiento"
L.CASTBAR_desc = "Barras de lanzamiento se muestran a veces con ciertos jefes, normalmente para atraer la atención de que una habilidad crítica está en camino. Si esta habilidad está acompañada por una barra de lanzamiento que quieres ocultar, desactiva esta opción."
L.SAY_COUNTDOWN = "Decir cuenta atrás"
L.SAY_COUNTDOWN_desc = "Las burbujas de chat son fáciles de detectar. BigWigs usará múltiples mensajes de cuenta atrás para alertar a los que estén cerca que una habilidad en ti está a punto de expirar."
L.ME_ONLY_EMPHASIZE = "Enfatizar (sólo en mi)"
L.ME_ONLY_EMPHASIZE_desc = "Habilitar esto enfatizará cualquier mensaje asociado con esta habilidad SOLO si se lanza sobre ti, mostrandolo más grande y visible."
L.NAMEPLATE = "Placas de Nombre"
L.NAMEPLATE_desc = "Si está habilitado, características como íconos y texto relacionados con esta habilidad específica se mostrarán en tus placas de nombre. Esto facilita ver qué NPC específico está lanzando una habilidad cuando hay múltiples NPCs que la lanzan."
L.PRIVATE = "Auras privadas"
L.PRIVATE_desc = "Las auras privadas no pueden registrarse normalmente, pero el sonido de \"en mi\" (alerta) se puede configurar en la pestaña de sonido."

L.advanced = "Opciones avanzadas"
L.back = "<< Volver"

L.tank = "|cFFFF0000Solo alertas para tanques.|r "
L.healer = "|cFFFF0000Solo alertas para sanadores.|r "
L.tankhealer = "|cFFFF0000Solo alertas para tanque y sanador.|r "
L.dispeller = "|cFFFF0000Alertas para dispelear únicamente.|r "

-- Sharing.lua
L.import = "Importar"
L.import_info = "Después de ingresar el código de importación, puedes seleccionar qué configuraciones te gustaría importar.\nSi las configuraciones no están disponibles en el código de importación, no serán seleccionables.\n\n|cffff4411Esta importación solo afectará las configuraciones generales y no afectará las configuraciones específicas del jefe.|r"
L.import_info_active = "Elige qué partes te gustaría importar y luego haz clic en el botón de importar."
L.import_info_none = "|cFFFF0000La código de importación es incompatible o está desactualizada.|r"
L.export = "Exportar"
L.export_info = "Selecciona qué configuraciones te gustaría exportar y compartir con otros.\n\n|cffff4411Solo puedes compartir configuraciones generales y estas no tienen efecto en las configuraciones específicas del jefe.|r"
L.export_string = "Código de Exportación"
L.export_string_desc = "Copia este codigo de BigWigs si deseas compartir tus configuraciones."
L.import_string = "Código de Importación"
L.import_string_desc = "Pega aquí el código de BigWigs que deseas importar."
L.position = "Posición"
L.settings = "Configuraciones"
L.other_settings = "Otras Configuraciones"
L.nameplate_settings_import_desc = "Importar todas las configuraciones de placas de nombre."
L.nameplate_settings_export_desc = "Exportar todas las configuraciones de placas de nombre."
L.position_import_bars_desc = "Importar la posición (anclajes) de las barras."
L.position_import_messages_desc = "Importar la posición (anclajes) de los mensajes."
L.position_import_countdown_desc = "Importar la posición (anclajes) de la cuenta regresiva."
L.position_export_bars_desc = "Exportar la posición (anclajes) de las barras."
L.position_export_messages_desc = "Exportar la posición (anclajes) de los mensajes."
L.position_export_countdown_desc = "Exportar la posición (anclajes) de la cuenta regresiva."
L.settings_import_bars_desc = "Importar las configuraciones generales de las barras, como tamaño, fuente, etc."
L.settings_import_messages_desc = "Importar las configuraciones generales de los mensajes, como tamaño, fuente, etc."
L.settings_import_countdown_desc = "Importar las configuraciones generales de la cuenta regresiva, como voz, tamaño, fuente, etc."
L.settings_export_bars_desc = "Exportar las configuraciones generales de las barras, como tamaño, fuente, etc."
L.settings_export_messages_desc = "Exportar las configuraciones generales de los mensajes, como tamaño, fuente, etc."
L.settings_export_countdown_desc = "Exportar las configuraciones generales de la cuenta regresiva, como voz, tamaño, fuente, etc."
L.colors_import_bars_desc = "Importar los colores de las barras."
L.colors_import_messages_desc = "Importar los colores de los mensajes."
L.color_import_countdown_desc = "Importar el color de la cuenta regresiva."
L.colors_export_bars_desc = "Exportar los colores de las barras."
L.colors_export_messages_desc = "Exportar los colores de los mensajes."
L.color_export_countdown_desc = "Exportar el color de la cuenta regresiva."
L.confirm_import = "Las configuraciones seleccionadas que estás a punto de importar sobrescribirán las configuraciones en tu perfil actualmente seleccionado:\n\n|cFF33FF99\"%s\"|r\n\n¿Estás seguro de que deseas hacer esto?"
L.confirm_import_addon = "El addon |cFF436EEE\"%s\"|r quiere importar automáticamente nuevas configuraciones de BigWigs que sobrescribirán las configuraciones en tu perfil de BigWigs actualmente seleccionado:\n\n|cFF33FF99\"%s\"|r\n\n¿Estás seguro de que deseas hacer esto?"
L.confirm_import_addon_new_profile = "El addon |cFF436EEE\"%s\"|r quiere crear automáticamente un nuevo perfil de BigWigs llamado:\n\n|cFF33FF99\"%s\"|r\n\nAceptar este nuevo perfil también lo cambiará."
L.confirm_import_addon_edit_profile = "El addon |cFF436EEE\"%s\"|r quiere editar automáticamente uno de tus perfiles de BigWigs llamado:\n\n|cFF33FF99\"%s\"|r\n\nAceptar estos cambios también lo cambiará."
L.no_string_available = "No hay código de importación almacenada para importar. Primero importa un código."
L.no_import_message = "No se importaron configuraciones."
L.import_success = "Importado: %s" -- Importado: Anclajes de Barras, Colores de Mensajes
L.imported_bar_positions = "Posiciones de Barras"
L.imported_bar_settings = "Configuraciones de Barras"
L.imported_bar_colors = "Colores de Barras"
L.imported_message_positions = "Posiciones de Mensajes"
L.imported_message_settings = "Configuraciones de Mensajes"
L.imported_message_colors = "Colores de Mensajes"
L.imported_countdown_position = "Posición de Cuenta Regresiva"
L.imported_countdown_settings = "Configuraciones de Cuenta Regresiva"
L.imported_countdown_color = "Color de Cuenta Regresiva"
L.imported_nameplate_settings = "Configuraciones de Placas de Nombre"

-- Statistics
L.statistics = "Estadísticas"
L.defeat = "Derrota"
L.defeat_desc = "La cantidad total de veces que has sido derrotado en este encuentro con este jefe."
L.victory = "Victoria"
L.victory_desc = "La cantidad total de veces que has salido victorioso en este encuentro con este jefe."
L.fastest = "Más Rápido"
L.fastest_desc = "La victoria más rápida y la fecha en que ocurrió (Año/Mes/Día)"
L.first = "Primera"
L.first_desc = "La primera vez que saliste victorioso en este encuentro, formato:\n[Cantidad de derrotas antes de la primera victoria] - [Duración del combate] - [Año/Mes/Día de la victoria]"
-- Difficulty levels for statistics display on bosses
L.unknown = "Desconocido"
L.LFR = "LFR"
L.normal = "Normal"
L.heroic = "Heroico"
L.mythic = "Mítico"
L.timewalk = "Paseo en el Tiempo"
L.story = "Historia"
L.mplus = "Mítica+ %d"
--L.SOD = "Season of Discovery"
--L.hardcore = "Hardcore"
L.level1 = "Nivel 1"
L.level2 = "Nivel 2"
L.level3 = "Nivel 3"
L.N10 = "Normal 10"
L.N25 = "Normal 25"
L.H10 = "Heroico 10"
L.H25 = "Heroico 25"
