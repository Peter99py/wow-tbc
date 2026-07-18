# 🎮 WoW TBC Offline - Guia Completo de Comandos

## 📋 Sumário
- [Criar Conta](#1-criar-conta)
- [Criar Bots](#2-criar-bots-pra-te-ajudar)
- [Comandos de Bot](#3-comandos-de-bot)
- [Comandos de Jogador](#4-comandos-de-jogador)
- [Comandos GM](#5-comandos-gm)
- [Comandos de Moderador](#6-comandos-de-moderador)
- [Comandos de Administrador](#7-comandos-de-administrador)
- [Comandos de Console](#8-comandos-de-console)
- [Dicas de Gameplay](#9-dicas-de-gameplay)

---

## 1. Criar Conta

### Conta padrão (já existe):
```
Usuário: ADMINISTRATOR
Senha: administrator
Acesso: GM nível 3 (admin total)
```

### Criar nova conta (console do servidor):
```bash
make console
```
Digite no console (mesmo com logs aparecendo):
```
account create nome senha
account set addon nome 1
account set gmlevel nome 3 -1
```
Para sair: `Ctrl+P` `Ctrl+Q`

---

## 2. Criar Bots (pra te ajudar)

Crie personagens extras na mesma conta e eles viram bots quando você loga.

| Personagem | Classe | Função |
|------------|--------|--------|
| Seu Main | Qualquer | Você controla |
| Healer | Priest / Paladino / Druida | Cura o grupo |
| Tank | Warrior / Druida (Feral) | Segura os mobs |
| DPS | Mage / Warlock / Rogue / Hunter | Dano |

No jogo, chame os bots:
```
.bot add NomeDoBot
```
Configure a função:
```
.target NomeDoBot
.bot tweak
```

---

## 3. Comandos de Bot

### Comandos `.bot` (no chat com ponto)

| Comando | Nível | Descrição |
|---------|-------|-----------|
| `.bot add NOME` | Jogador | Adiciona bot ao grupo |
| `.bot remove NOME` | Jogador | Remove bot do grupo |
| `.bot tweak` | Jogador | Abre menu de configuração do bot |
| `.bot lag` | Jogador | Verifica lag dos bots |
| `.bot stats` | Jogador | Mostra status dos bots |
| `.bot summon` | Jogador | Summona o bot até você |
| `.bot sendto` | Jogador | Envia o bot para um local |

### Comandos de chat com o bot (digite no chat sem ponto)

Digite diretamente no chat para dar ordens ao bot que estiver por perto.

| Comando | Descrição |
|---------|-----------|
| `follow` | Bot segue você |
| `stay` | Bot fica parado onde está |
| `attack` | Bot ataca seu alvo atual |
| `pull` | Bot puxa/puxa aggro do mob alvo |
| `flee` | Bot foge do combate |
| `grind` | Bot começa a farmar mobs sozinho |
| `loot` | Bot saqueia corpos próximos |
| `revive` | Bot revive você se estiver morto |
| `spells` | Bot lista as spells dele |
| `report` | Bot mostra status atual |
| `stats` | Bot mostra estatísticas |
| `talents` | Bot mostra árvore de talentos |
| `help` | Lista todos os comandos disponíveis |

---

## 4. Comandos de Jogador

| Comando | Descrição |
|---------|-----------|
| `.account` | Mostra seu nível de acesso |
| `.account lock [on/off]` | Bloqueia conta para IP atual |
| `.account password $old $new $new` | Altera sua senha |
| `.commands` | Lista todos comandos disponíveis |
| `.dismount` | Desmonta |
| `.gm ingame` | Lista GMs online |
| `.help [$comando]` | Ajuda sobre um comando |
| `.save` | Salva seu personagem |
| `.server info` | Info do servidor |
| `.server motd` | Mensagem do servidor |
| `.start` | Teleporta pro inicio da sua raça |

---

## 5. Comandos GM

### Visibilidade e Modo GM

| Comando | Descrição |
|---------|-----------|
| `.gm [on/off]` | Ativa/desativa modo GM |
| `.gm chat [on/off]` | Ativa badge de GM no chat |
| `.gm fly [on/off]` | Ativa/desativa voo GM |
| `.gm list` | Lista contas GM |
| `.gm setview` | Define visão em um alvo |
| `.gm visible [on/off]` | Fica invisível |

### Teleportes

| Comando | Descrição |
|---------|-----------|
| `.tele NOME` | Teleporta para local (ex: .tele STORMWIND) |
| `.tele list` | Lista todos teleportes |
| `.tele add NOME` | Adiciona local atual à lista |
| `.tele del NOME` | Remove local da lista |
| `.tele group LOCAL` | Teleporta grupo |
| `.go $jogador` | Vai até o jogador |
| `.go creature #id` | Vai até criatura |
| `.go object #id` | Vai até objeto |
| `.go xy #x #y [#map]` | Vai para coordenadas |
| `.go xyz #x #y #z [#map]` | Vai para coordenadas exatas |
| `.go zonexy #x #y [#zone]` | Vai para coordenadas na zona |
| `.go taxinode #id` | Vai até taxinode |
| `.go graveyard #id` | Vai até cemitério |
| `.go grid #x #y [#map]` | Vai até grid específico |
| `.go trigger #id` | Vai até area trigger |
| `.goname $jogador` | Vai até o jogador (pode ser offline) |
| `.namego $jogador` | Puxa jogador até você |
| `.groupgo $jogador` | Teleporta jogador + grupo |
| `.recall [$jogador]` | Volta pra posição anterior |

### Level e Progresso

| Comando | Descrição |
|---------|-----------|
| `.levelup [#n]` | Sobe #n níveis (padrão 1) |
| `.character level [$nome] [#n]` | Define nível exato |
| `.character rename [$nome]` | Marca para renomear |
| `.character reputation [$nome]` | Mostra reputação |

### Itens e Dinheiro

| Comando | Descrição |
|---------|-----------|
| `.additem #id [#qtd]` | Adiciona item |
| `.additemset #id` | Adiciona conjunto de itens |
| `.lookup item $nome` | Busca ID do item |
| `.lookup itemset $nome` | Busca ID do conjunto |
| `.bank` | Abre banco |
| `.stable` | Mostra estábulo |
| `.repairitems` | Repara itens |
| `.send items $player "$sub" "$txt" #id` | Envia itens por correio |
| `.send money $player "$sub" "$txt" $gold` | Envia dinheiro |
| `.send mail $player "$sub" "$txt"` | Envia mensagem |

### Aprendizado

| Comando | Descrição |
|---------|-----------|
| `.learn #spell [all]` | Aprende spell |
| `.learn all` | Aprende muitas spells |
| `.learn all_myclass` | Aprende todas spells da sua classe |
| `.learn all_myspells` | Aprende todas spells (exceto talentos) |
| `.learn all_mytalents` | Aprende todos talentos |
| `.learn all_crafts` | Aprende todas profissões |
| `.learn all_recipes [$prof]` | Aprende todas receitas |
| `.learn all_default [$player]` | Aprende spells padrão |
| `.learn all_gm` | Aprende spells de GM |
| `.unlearn #spell [all]` | Desaprende spell |
| `.maxskill` | Maxima todas skills |
| `.setskill #skill #level [#max]` | Define skill específica |

### Combate e Status

| Comando | Descrição |
|---------|-----------|
| `.revive` | Revive (você ou alvo) |
| `.die` | Mata o alvo |
| `.combatstop [$player]` | Para combate |
| `.respawn` | Ressuscita criaturas próximas |
| `.cooldown [#spell]` | Reseta cooldowns |
| `.aura #spellid` | Aplica aura |
| `.unaura #spellid` | Remove aura |
| `.cast #spellid [triggered]` | Lança spell |
| `.cast back #spellid` | Alvo lança spell em você |
| `.cast self #spellid` | Alvo lança spell em si |
| `.cast target #spellid` | Alvo lança spell no alvo dele |
| `.cast dist #spellid #dist` | Lança spell a distância |
| `.damage $dano [$school [$spell]]` | Causa dano |
| `.cooldown` | Reseta todos cooldowns |
| `.save` | Salva personagem |
| `.saveall` | Salva todos personagens |

### Modificadores

| Comando | Descrição |
|---------|-----------|
| `.modify speed #rate` | Modifica velocidade (0.1-10) |
| `.modify aspeed #rate` | Modifica TODAS velocidades |
| `.modify bwalk #rate` | Modifica velocidade ré |
| `.modify swim #rate` | Modifica velocidade nado |
| `.modify hp #hp` | Modifica HP |
| `.modify mana #mana` | Modifica mana |
| `.modify rage #rage` | Modifica rage |
| `.modify energy #energy` | Modifica energia |
| `.modify money $gold` | Adiciona/remove dinheiro |
| `.modify scale #scale` | Modifica escala do modelo |
| `.modify mount #id #speed` | Monta em criatura |
| `.modify morph #displayid` | Muda aparência |
| `.modify demorph` | Remove morph |
| `.modify faction #id #flag #npcflag #dynflag` | Modifica facção |
| `.modify gender male/female` | Muda gênero |
| `.modify drunk #valor` | Define nível de bebida |
| `.modify standstate #emoteid` | Muda emote em pé |
| `.modify rep #repId #valor` | Modifica reputação |
| `.modify honor $campo $valor` | Modifica honra |

### Utilidades

| Comando | Descrição |
|---------|-----------|
| `.explorecheat 1` | Revela todo mapa |
| `.explorecheat 0` | Esconde mapa |
| `.showarea #areaid` | Revela área específica |
| `.hidearea #areaid` | Esconde área |
| `.taxicheat [on/off]` | Libera todos taxi |
| `.waterwalk [on/off]` | Anda sobre água |
| `.repairitems` | Repara itens |
| `.guid` | Mostra GUID do alvo |
| `.gps` | Mostra coordenadas atuais |
| `.distance [$nome]` | Mostra distância até alvo |
| `.pinfo [$player]` | Info da conta do jogador |
| `.kick [$player]` | Expulsa jogador |
| `.mute [$player] $min` | Silencia jogador |
| `.unmute $player` | Remove silêncio |
| `.whispers [on/off]` | Aceita/rejeita sussurros |

### Spawn de NPCs e Objetos

| Comando | Descrição |
|---------|-----------|
| `.npc add #id` | Spawna criatura |
| `.npc delete [#guid]` | Deleta criatura |
| `.npc info` | Info da criatura selecionada |
| `.npc move [#guid]` | Move spawn point |
| `.npc changelevel #n` | Muda nível (1-63) |
| `.npc factionid #id` | Muda facção |
| `.npc flag #flag` | Muda NPC flags |
| `.npc setmodel #displayid` | Muda modelo |
| `.npc setmovetype #guid stay/random/way` | Muda tipo de movimento |
| `.npc spawndist #dist` | Distância de spawn |
| `.npc spawntime #time` | Tempo de spawn |
| `.npc follow` | NPC segue você |
| `.npc unfollow` | NPC para de seguir |
| `.npc tame` | Domestica criatura |
| `.npc say #texto` | NPC fala |
| `.npc yell #texto` | NPC grita |
| `.npc whisper #playerguid #texto` | NPC sussurra |
| `.npc textemote #emoteid` | NPC faz emote textual |
| `.npc playemote #emoteid` | NPC faz emote |
| `.npc additem #itemId [#max]` | Adiciona item ao vendor |
| `.npc delitem #itemId` | Remove item do vendor |
| `.npc aiinfo` | Info de AI do NPC |
| `.npc setdeathstate on/off` | Estado de morte |
| `.gobject add #id [tempo]` | Spawna game object |
| `.gobject delete #guid` | Deleta game object |
| `.gobject move #guid [x y z]` | Move game object |
| `.gobject turn #guid` | Rotaciona game object |
| `.gobject near [#dist]` | Lista objetos próximos |
| `.gobject target [#id]` | Localiza objeto |

### Guildas

| Comando | Descrição |
|---------|-----------|
| `.guild create [$lider] "$nome"` | Cria guild |
| `.guild delete "$nome"` | Deleta guild |
| `.guild invite [$player] "$nome"` | Convida para guild |
| `.guild uninvite [$player]` | Remove da guild |
| `.guild rank $player #rank` | Define rank |

### Eventos

| Comando | Descrição |
|---------|-----------|
| `.event #id` | Mostra detalhes do evento |
| `.event list` | Lista eventos ativos |
| `.event start #id` | Inicia evento |
| `.event stop #id` | Para evento |

### Instâncias

| Comando | Descrição |
|---------|-----------|
| `.instance listbinds` | Lista binds de instância |
| `.instance savedata` | Salva dados da instância |
| `.instance stats` | Estatísticas das instâncias |
| `.instance unbind all` | Limpa binds |

### Battleground / PvP

| Comando | Descrição |
|---------|-----------|
| `.honor add $qtd` | Adiciona honra |
| `.honor addkill` | Adiciona kill honroso |
| `.honor show` | Mostra honra |
| `.honor update` | Força atualização |
| `.debug bg` | Modo debug BG (iniciar só) |

### Buscas (Lookup)

| Comando | Descrição |
|---------|-----------|
| `.lookup item $nome` | Busca item |
| `.lookup itemset $nome` | Busca conjunto |
| `.lookup spell $nome` | Busca spell |
| `.lookup creature $nome` | Busca criatura |
| `.lookup object $nome` | Busca objeto |
| `.lookup quest $nome` | Busca quest |
| `.lookup skill $nome` | Busca habilidade |
| `.lookup faction $nome` | Busca facção |
| `.lookup tele $texto` | Busca teleporte |
| `.lookup area $nome` | Busca área |
| `.lookup taxinode $texto` | Busca taxinode |
| `.lookup event $nome` | Busca evento |
| `.lookup player account $texto` | Busca jogador por conta |
| `.lookup player ip $texto` | Busca jogador por IP |
| `.lookup account name $texto` | Busca conta por nome |

### Quest

| Comando | Descrição |
|---------|-----------|
| `.quest add #id` | Adiciona quest |
| `.quest complete #id` | Completa quest |
| `.quest remove #id` | Remove quest |

### Reset

| Comando | Descrição |
|---------|-----------|
| `.reset all [spells/talents]` | Reseta todos |
| `.reset level [$player]` | Reseta nível para 1 |
| `.reset spells [$player]` | Remove spells não originais |
| `.reset talents [$player]` | Reseta talentos |
| `.reset stats [$player]` | Recalcula stats |
| `.reset honor [$player]` | Reseta honra |

### Reload

| Comando | Descrição |
|---------|-----------|
| `.reload all` | Recarrega tudo |
| `.reload config` | Recarrega config |
| `.reload all_area` | Area triggers |
| `.reload all_eventai` | EventAI |
| `.reload all_item` | Itens |
| `.reload all_locales` | Traduções |
| `.reload all_loot` | Loot tables |
| `.reload all_npc` | NPCs |
| `.reload all_quest` | Quests |
| `.reload all_scripts` | Scripts |
| `.reload all_spell` | Spells |

### Debug

| Comando | Descrição |
|---------|-----------|
| `.debug getvalue #campo` | Lê valor de campo |
| `.debug setvalue #campo #valor` | Define valor |
| `.debug modvalue #campo #valor` | Modifica valor |
| `.debug getitemvalue #guid #campo` | Lê valor de item |
| `.debug setitemvalue #guid #campo #valor` | Define valor de item |
| `.debug moditemvalue #guid #campo #valor` | Modifica valor de item |
| `.debug play sound #soundid` | Toca som |
| `.debug play cinematic #cinematicid` | Toca cinematic |
| `.debug anim #emoteid` | Toca emote |
| `.debug spellcoefs #spellid` | Coeficientes de spell |
| `.debug spellmods (flat/pct) #mask #op #valor` | Modificador de spell |

### Outros Comandos Admin

| Comando | Descrição |
|---------|-----------|
| `.ban account $nome $tempo $motivo` | Bane conta |
| `.ban character $nome $tempo $motivo` | Bane personagem |
| `.ban ip $ip $tempo $motivo` | Bane IP |
| `.baninfo account $id` | Info de ban |
| `.baninfo character $nome` | Info de ban |
| `.baninfo ip $ip` | Info de ban |
| `.banlist account [$nome]` | Lista bans |
| `.banlist character $nome` | Lista bans |
| `.banlist ip [$ip]` | Lista bans |
| `.unban account $nome` | Desbane conta |
| `.unban character $nome` | Desbane personagem |
| `.unban ip $ip` | Desbane IP |
| `.announce $msg` | Mensagem global |
| `.notify $msg` | Notificação na tela |
| `.server restart #seg` | Reinicia servidor |
| `.server shutdown #seg` | Desliga servidor |
| `.server idlerestart #seg` | Reinicia quando vazio |
| `.server idleshutdown #seg` | Desliga quando vazio |
| `.server set motd "$msg"` | Define mensagem do servidor |
| `.server plimit [#num]` | Limite de jogadores |
| `.server corpses` | Checa expiração de corpos |
| `.server log level [#n]` | Nível de log (0-3) |
| `.server log filter $filtro on/off` | Filtros de log |
| `.character level [$nome] [#n]` | Define nível exato |
| `.character rename [$nome]` | Marca para renomear |
| `.character reputation [$nome]` | Mostra reputação |
| `.character deleted list` | Lista personagens deletados |
| `.character deleted restore #guid` | Restaura personagem |
| `.list creature #id [#max]` | Lista criaturas no mundo |
| `.list object #id [#max]` | Lista objetos no mundo |
| `.list item #id [#max]` | Lista itens no mundo |
| `.list talents` | Lista talentos |
| `.neargrave [horde/alliance]` | Cemitério mais próximo |
| `.linkgrave #id [horde/alliance]` | Liga zona a cemitério |
| `.pool #id` | Info do pool |
| `.pool list` | Lista pools no mapa |
| `.pool spawns #id` | Spawns do pool |
| `.loadscripts $lib` | Recarrega scripts |
| `.pdump write $arquivo $player` | Exporta personagem |
| `.pdump load $arquivo $conta [$novonome]` | Importa personagem |
| `.wchange #tipo #status` | Muda clima |
| `.wp add` | Adiciona waypoint |
| `.wp show [on/off]` | Mostra waypoints |
| `.wp modify [comando]` | Modifica waypoint |
| `.wp export $arquivo` | Exporta waypoints |
| `.movegens` | Mostra movimento |
| `.server exit` | Fecha servidor |
| `.ticket [on/off/#num]` | Gerenciar tickets |
| `.trigger [#id]` | Info de area trigger |
| `.trigger active` | Triggers ativos |
| `.trigger near [#dist]` | Triggers próximos |

### AH Bot (Leilão)

| Comando | Descrição |
|---------|-----------|
| `.ahbot status [all]` | Status do AH bot |
| `.ahbot reload` | Recarrega config |
| `.ahbot rebuild [all]` | Reconstrói leilões |
| `.ahbot items amount $grey $white $green $blue $purple $orange $yellow` | Quantidade de itens |
| `.ahbot items amount blue #n` | Itens azuis |
| `.ahbot items amount green #n` | Itens verdes |
| `.ahbot items amount grey #n` | Itens cinza |
| `.ahbot items ratio $ali $horda $neutro` | Ratio das facções |
| `.auction` | Casa de leilão |
| `.auction alliance` | LEilão da Aliança |
| `.auction horde` | Leilão da Horda |
| `.auction goblin` | Leilão Neutro |
| `.auction item (alliance/horde/goblin) #id` | Adiciona item ao leilão |

---

## 6. Comandos de Moderador

| Comando | Descrição |
|---------|-----------|
| `.announce $msg` | Mensagem global no chat |
| `.notify $msg` | Notificação na tela |
| `.gm [on/off]` | Modo GM |
| `.gm chat [on/off]` | Badge de GM |
| `.gm setview` | Visão do alvo |
| `.gm visible [on/off]` | Visibilidade |
| `.go [$player/coord]` | Teleportar |
| `.go creature #guid/$nome` | Ir até criatura |
| `.go object #guid/$nome` | Ir até objeto |
| `.go xy #x #y [#map]` | Ir para coordenadas |
| `.go xyz #x #y #z [#map]` | Ir para coordenadas |
| `.go zonexy #x #y [#zone]` | Ir para zona |
| `.go taxinode #id` | Ir para taxinode |
| `.go graveyard #id` | Ir para cemitério |
| `.go trigger #id` | Ir para trigger |
| `.goname $player` | Ir até jogador |
| `.namego $player` | Puxar jogador |
| `.groupgo $player` | Teleportar grupo |
| `.recall [$player]` | Voltar |
| `.tele LOCAL` | Teleportar |
| `.tele group LOCAL` | Teleportar grupo |
| `.lookup tele $texto` | Buscar teleporte |
| `.lookup area $nome` | Buscar área |
| `.learn all_default [$player]` | Aprender spells padrão |
| `.learn all_lang` | Aprender línguas |
| `.modify speed #rate` | Velocidade |
| `.modify aspeed #rate` | Todas velocidades |
| `.modify bwalk #rate` | Velocidade ré |
| `.modify swim #rate` | Velocidade nado |
| `.modify hp #hp` | HP |
| `.modify mana #mana` | Mana |
| `.modify rage #rage` | Raiva |
| `.modify energy #energy` | Energia |
| `.modify money $gold` | Dinheiro |
| `.modify scale #scale` | Escala |
| `.modify mount #id #speed` | Montaria |
| `.modify faction #id #flag` | Facção |
| `.modify drunk #valor` | Bebida |
| `.kick [$player]` | Expulsar |
| `.mute [$player] $min` | Silenciar |
| `.saveall` | Salvar todos |
| `.send mail $player "$sub" "$txt"` | Enviar mensagem |
| `.taxicheat [on/off]` | Taxi cheat |
| `.debug play sound #id` | Tocar som |
| `.debug play cinematic #id` | Tocar cinematic |
| `.npc say #texto` | NPC falar |
| `.npc yell #texto` | NPC gritar |
| `.npc textemote #emoteid` | NPC emote |
| `.npc whisper $player #texto` | NPC sussurrar |
| `.whispers [on/off]` | Aceitar sussurros |

---

## 7. Comandos de Console (servidor)

| Comando | Descrição |
|---------|-----------|
| `account create $user $pass` | Cria conta |
| `account delete $user` | Deleta conta |
| `account set gmlevel $user #level` | Define GM level |
| `account set password $user $pass $pass` | Altera senha |
| `account onlinelist` | Contas online |
| `account characters $user` | Personagens da conta |
| `server exit` | Fecha servidor |
| `server log level [#n]` | Nível de log |
| `server log filter $filtro on/off` | Filtros |
| `quit` | Sai do console |
| `character deleted delete #guid/$nome` | Deleta permanentemente |
| `character deleted old [#dias]` | Deleta antigos |
| `character erase $nome` | Apaga personagem |

---

## 8. Dicas de Gameplay

### Subindo de nível com bots

```
1. Crie Priest (healer), Warrior (tank) e um DPS
2. Logue com seu main
3. .bot add Priest
4. .bot add Warrior
5. .bot add Mage
6. Configure: .bot tweak (tank/heal/dps)
7. Vá matar mobs - todos ganham XP
```

### Começo rápido (GM)

```
.levelup 70
.learn all_myclass
.learn all_mytalents
.maxskill
.money 10000000
```

### Teleportes úteis

```
.tele STORMWIND     .tele ORGRIMMAR
.tele IRONFORGE     .tele THUNDERBLUFF
.tele DARNASSUS     .tele UNDERCITY
.tele SHATTRATH     .tele SILVERMOON
.tele EXODAR        .tele THEramore
```

### Itens úteis

```
.lookup item [nome]    .additem #id
.additem 6948 (Hearthstone)
.additem 17030 (Cross) 
```

---

> 💡 No jogo, `.help COMANDO` mostra a sintaxe completa de qualquer comando.
> 💡 `.commands` lista todos comandos disponíveis para seu nível de acesso.
