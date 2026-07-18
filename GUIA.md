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

> **Nota:** Os comandos abaixo foram compilados do [Playerbot Commands Wiki](https://github.com/mod-playerbots/mod-playerbots/wiki/Playerbot-Commands).
> Alguns podem usar o prefixo `.playerbots bot` em vez de `.bot` dependendo da build. Teste no jogo.

---

### Comandos de Setup de Altbots

Altbots são personagens que você cria na sua conta e depois atribui controle de bot.

| Comando | Descrição |
|---------|-----------|
| `.bot add [nome1,nome2,nome3]` | Adiciona bots ao grupo (login) |
| `.bot addaccount [accountname]` | Adiciona todos personagens de outra conta como bots |
| `.bot remove [nome1,nome2,nome3]` | Remove bots do grupo (logout) |
| `.bot add *` | Adiciona todos bots que estão no seu grupo/raid |
| `.bot remove *` | Remove todos bots do grupo/raid |
| `.bot refresh=raid *` | Reseta todas as instâncias salvas dos bots no raid |
| `maintenance` | Bot aprende todas spells disponíveis, repara, e reabastece itens (whisper p/ individual ou /p ou /r p/ grupo) |
| `autogear` | Bot equipa gear automaticamente baseado nas configs de qualidade |
| `talents` | Mostra a spec atual do bot |
| `talents spec list` | Lista specs disponíveis para a classe |
| `talents spec [nome]` | Força o bot a trocar para a spec escolhida |
| `talents apply <link>` | Aplica link de talentos ao bot |
| `glyphs` | Lista os glifos equipados do bot |
| `glyph equip [id1 id2 ...]` | Bot aplica glifos |
| `reset botAI` | Reseta configurações do bot |
| `reset` | Reseta ações atuais do bot (cast, movimento, etc) |

---

### Comandos Gerais de Grupo/Raid

| Comando | Descrição |
|---------|-----------|
| `summon` | Summona o bot até você |
| `release` | Solta o espírito quando morto |
| `revive` | Revive perto de um espírito curador |
| `leave` | Sai do grupo |
| `attack` | Ataca o alvo selecionado |
| `follow` | Bot corre até você (/w individual, /p ou /r para grupo) |
| `flee` | Corre até você ignorando tudo ao redor |
| `stay` | Fica parado no lugar |
| `runaway` | Kiteia o mob (puxa ele correndo) |
| `grind` | Ataca qualquer coisa por perto |
| `disperse set x` | Força bots a manter x jardas de distância entre si |
| `disperse disable` | Reseta distância de dispersão para o padrão |
| `give leader` | Bot passa liderança do grupo para você |
| `lfg` | Bot entra no grupo/raid preenchendo função vaga (tank/heal/dps) |
| `lfg x` | Mesmo que acima, mas para tamanho específico [5,10,20,25,40] |

**Você pode especificar por grupo ou tipo para alguns comandos como `attack` e `follow`:**
- `@group1 follow`
- `@group2 attack`
- `@tank`, `@dps`, `@heal`, `@ranged`, `@rangeddps`, `@meleedps`, `@[className]`
- Combinados: `@Group1,4` ou `@group2-5,8`

---

### Comandos de Spells

| Comando | Descrição |
|---------|-----------|
| `spells` | Mostra as spells do bot |
| `cast [nome_spell]` | Bot lança a spell (/w individual) |
| `cast [nome_spell] on [PlayerName]` | Bot lança spell em um jogador específico |
| `ss +[spell id]` | Adiciona spell à lista de exclusão |
| `ss -[spell id]` | Remove spell da lista de exclusão |
| `ss reset` | Limpa toda lista de exclusão |
| `trainer` | Mostra o que o bot pode aprender no treinador selecionado |
| `trainer learn` | Aprende do treinador selecionado |

---

### Comandos de Target (RTSC / RTI)

**RTSC** — sistema para salvar posições e mandar bots para elas. Use `rtsc` para ativar e ganhar a spell "aedm" no seu livro de habilidades. Aponte e clique no chão para marcar uma posição.

**RTI** — sistema para focar bots em alvos específicos usando os ícones padrão do WoW.

| Comando | Descrição |
|---------|-----------|
| `rtsc` | Ativa RTSC e dá a spell "aedm" |
| `rtsc cancel` | Desativa RTSC e remove a spell |
| `rtsc save [#]` | Salva posição atual como número (use aedm no chão) |
| `rtsc unsave [#]` | Limpa posição salva |
| `rtsc go [#]` | Comanda bots a irem para posição salva |
| `rtsc go save` | Bots voltam para posição RTSC salva |
| `[nome/grupo] rtsc toggle` | Alterna para bot salvar posição com clique do mouse |
| `rti <icone>` | Define ícone alvo para bot priorizar (skull, cross, circle, star, etc) |
| `attack rti target` | Comanda bots a atacarem o alvo RTI |
| `rti cc <icone>` | Define ícone específico como alvo de CC (padrão é moon) |
| `focus heal +[PlayerName]` | Adiciona alguém à lista de foco de cura do bot |
| `focus heal -[PlayerName]` | Remove alguém da lista de foco de cura |
| `focus heal +[P1],+[P2],-[P3]` | Adiciona/remove múltiplos de uma vez |
| `focus heal ?` | Mostra a lista de foco de cura atual |
| `focus heal clear` | Limpa todos os focos de cura |

---

### Comandos de Loot

`ll` = loot list (lista de saque)

| Comando | Descrição |
|---------|-----------|
| `nc +loot` | Ativa saque automático |
| `ll all` | Saqueia tudo |
| `ll normal` | Saqueia exceto itens BOP (bind-on-pickup) |
| `ll gray` | Saqueia só itens cinza |
| `ll quest` | Saqueia só itens de quest |
| `ll skill` | Saqueia só itens de profissão (herbalismo, mineração, etc) |
| `ll [item]` | Adiciona item específico à lista de saque |
| `ll -[item]` | Remove item específico da lista de saque |

---

### Comandos de Itens

| Comando | Descrição |
|---------|-----------|
| `[item]` | Bot diz quantos itens tem e status de quest |
| `e [item]` | Equipa item |
| `ue [item]` | Remove item equipado |
| `u [item]` | Usa item |
| `u [item] [target]` | Usa item em um alvo (ex: usar gema em item) |
| `open items` | Abre itens no inventário que têm loot (ex: Bolsa de Espólios) |
| `destroy [item]` | Destroi item |
| `roll [item]` | Bots no grupo/raid rolam pelo item se for upgrade |
| `roll` | Todos os bots rolam |
| `s [item]` | Vende item |
| `s *` | Vende todos itens cinza |
| `s vendor` | Vende todos itens que podem ser vendidos |
| `b [item]` | Compra item |
| `2g 3s 5c` | Bot te dá dinheiro (ouro, prata, cobre) |
| `bank [item]` | Deposita item no banco |
| `bank -[item]` | Retira item do banco |
| `gb [item]` | Deposita item no guild bank |
| `gb -[item]` | Retira item do guild bank |
| `outfit ?` | Lista outfits salvos |
| `outfit <nome> +[item]` | Adiciona item ao outfit (cria se novo) |
| `outfit <nome> -[item]` | Remove item do outfit |
| `outfit <nome> equip` | Equipa os itens do outfit |
| `outfit <nome> replace` | Remove tudo e equipa o outfit |
| `outfit <nome> update` | Sobrescreve outfit com itens equipados atuais |
| `outfit <nome> reset` | Limpa todos itens do outfit |

---

### Comandos de Quest

| Comando | Descrição |
|---------|-----------|
| `quests` | Mostra resumo das quests |
| `quests all` | Lista com links de todas quests no log |
| `accept [quest]` | Aceita quest no quest giver selecionado |
| `accept *` | Aceita todas quests do quest giver |
| `drop [quest]` | Abandona quest |
| `r [item]` | Escolhe recompensa de quest |
| `[quest]` | Mostra status da quest |
| `talk` | Fala com NPC selecionado (para completar quest) |
| `u [game object]` | Usa objeto no mundo |

---

### Comandos de Pet

| Comando | Descrição |
|---------|-----------|
| `pet aggressive` | Modo agressivo |
| `pet passive` | Modo passivo |
| `pet defensive` | Modo defensivo |
| `pet stance` | Mostra postura atual do pet |
| `pet attack` | Pet ataca alvo selecionado |
| `pet follow` | Pet segue o dono |
| `pet stay` | Pet fica parado |

---

### Comandos de Hunter (Domar)

| Comando | Descrição |
|---------|-----------|
| `tame` | Ajuda sobre domar |
| `tame name "nome"` | Invoca um pet domável pelo nome |
| `tame id "id"` | Invoca um pet domável pelo ID do banco |
| `tame family` | Ajuda sobre famílias |
| `tame family "familia"` | Invoca aleatoriamente um pet da família |
| `tame rename "novo nome"` | Renomeia o pet atual |

---

### Comandos Estratégicos (Combat e Non-Combat)

Bots usam duas categorias de estratégias: **combat (co)** e **non-combat (nc)**.

Você pode adicionar (+), remover (-) ou alternar (~) estratégias:
```
co +strategy1,-strategy2,~strategy3
nc +strategy1,-strategy2,~strategy3
```

Consultar estratégias atuais:
```
co ?
nc ?
```

Resetar estratégias:
```
co !
nc !
```

#### Estratégias de Combate (co)

| Estratégia | Descrição |
|------------|-----------|
| `tank` | Usa habilidades de ameaça (warrior, paladin, druid bear) |
| `tank assist` | Tank puxa mobs de outros |
| `dps` | Usa habilidades de dano |
| `cc` | Usa habilidades de crowd control (requer alvo RTI) |
| `assist` | Foca um mob de cada vez |
| `aoe` | Ataca múltiplos mobs ao mesmo tempo |
| `boost` | Usa CDs grandes (útil para bursts em bosses) |
| `threat` | DPS evita ativamente pegar aggro |
| `grind` | Ataca qualquer alvo visível |
| `heal` | Foca em cura do grupo |
| `focus` | Para de usar AoE e foca em um único alvo |
| `avoid aoe` | Evita automaticamente AoE prejudicial |
| `save mana` | Curadores economizam mana quando abaixo do limite |
| `healer dps` | Curadores usam dano se tiver mana suficiente |
| `tank face` | Garante que o alvo não fique de frente para o grupo |
| `behind` | Move para as costas do alvo |
| `wait for attack` | Bot espera X segundos antes de atacar |
| `pull` | Tank puxa mob com habilidade de longo alcance |
| `pull my target` | Tank puxa seu alvo atual |
| `pull rti target` | Tank puxa o alvo marcado com RTI |
| `pull back` | Tank puxa e volta para posição inicial |
| `mark rti` | Bot marca automaticamente alvos não marcados |

#### Estratégias de Não-Combate (nc)

| Estratégia | Descrição |
|------------|-----------|
| `new rpg` | Bot segue estratégia RPG (quests + grind) |
| `grind` | Busca alvos de nível apropriado para farmar |
| `follow` | Bot segue o mestre |
| `food` | Iniciar/parar de comer/beber |
| `pvp` | Ativar/desativar modo PvP |
| `loot` | Ativar saque automático |

#### Estratégias Específicas por Classe

**Paladino (nc):**
| Estratégia | Descrição |
|------------|-----------|
| `bmight` | Benção de Poder |
| `bwisdom` | Benção de Sabedoria |
| `bkings` | Benção dos Reis |
| `bsanc` | Benção de Santificação |
| `rfire` | Aura de Fogo |
| `rfrost` | Aura de Gelo |
| `rshadow` | Aura de Sombra |
| `baoe` | Aura de Retribuição |
| `barmor` | Aura de Devoção |
| `bcast` | Aura de Concentração |
| `bspeed` | Aura do Cruzado |

**Hunter (nc):**
| Estratégia | Descrição |
|------------|-----------|
| `bdps` | Aspecto da Agilidade |
| `bspeed` | Aspecto da Matilha/Chita |
| `bmana` | Aspecto da Víbora |
| `rnature` | Aspecto da Natureza |

**Warlock (nc) — Pets:**
| Estratégia | Descrição |
|------------|-----------|
| `imp` | Usa Imp |
| `voidwalker` | Usa Voidwalker |
| `succubus` | Usa Succubus |
| `felhunter` | Usa Felhunter |
| `felguard` | Usa Felguard (Demonologia) |

**Warlock (nc) — Soulstone:**
| Estratégia | Descrição |
|------------|-----------|
| `ss master` | Soulstone no mestre |
| `ss self` | Soulstone em si mesmo |
| `ss tank` | Soulstone no tank |
| `ss healer` | Soulstone no healer |

---

### Estratégias para Raids (ativadas automaticamente ao entrar)

| Estratégia | Raid |
|------------|------|
| `moltencore` | Molten Core |
| `bwl` | Blackwing Lair |
| `aq20` | Ruins of Ahn'Qiraj |
| `karazhan` | Karazhan |
| `gruulslair` | Gruul's Lair |
| `magtheridon` | Magtheridon's Lair |
| `ssc` | Serpentshrine Cavern |
| `naxx` | Naxxramas |
| `onyxia` | Onyxia's Lair |

---

### Comandos de Profissão

| Comando | Descrição |
|---------|-----------|
| `master fishing` | Bot pesca quando perto de água (se configurado) |

---

### Comandos de Account Linking

Permite linkar contas diferentes para controle de altbots (requer `AiPlayerbot.AllowTrustedAccountBots = 1` no config).

| Comando | Descrição |
|---------|-----------|
| `.bot account setKey [chave]` | Define uma chave de segurança para a conta atual |
| `.bot account link [ACCOUNTNAME] [chave]` | Linka uma conta usando a chave de segurança dela |
| `.bot account linkedAccounts` | Lista contas linkadas |
| `.bot account unlink [ACCOUNTNAME]` | Remove link de conta |

---

### Comandos de Console (mangosd)

| Comando | Descrição |
|---------|-----------|
| `playerbot pmon toggle` | Ativa/desativa monitor de performance |
| `playerbot pmon stack` | Mostra performance acumulada |
| `playerbot pmon tick` | Mostra médias de performance por ciclo |
| `playerbot pmon reset` | Reseta monitor de performance |
| `playerbot rndbot reset` | Limpa tabela de eventos de rndbots (requer restart) |
| `playerbot rndbot stats` | Mostra stats dos rndbots (nível, classe, etc) |
| `playerbot rndbot reload` | Recarrega playerbots.conf |
| `playerbot rndbot update` | Dispara um tick completo de AI |
| `playerbot rndbot init` | Re-rolla os rndbots (útil após mudar configs) |
| `playerbot rndbot clear` | Reseta bots para nível inicial |
| `playerbot rndbot level` | Sobe nível de todos rndbots em 1 |
| `playerbot rndbot refresh` | Revive, reseta AI e re-rolla gear dos rndbots |
| `playerbot rndbot teleport` | Teleporta todos rndbots para área apropriada |

---

### Reações Automáticas

Os bots reagem automaticamente às ações do líder do grupo:

| Sua ação | Reação do bot |
|----------|---------------|
| Aceitar uma quest | Bot aceita também |
| Falar com quest giver | Bot entrega quests completadas |
| Usar meeting stone | Bot teleporta junto |
| Usar objeto no mundo | Bot também usa |
| Abrir janela de troca | Bot mostra inventário e começa a trocar |
| Convidar para grupo/raid | Bot aceita |
| Iniciar ready check | Bot diz seu status |
| Montar/desmontar | Monta/desmonta também |
| Atravessar portal de dungeon | Bot segue para dentro |

---

### Comandos de addClass (usar rndbots para testes)

| Comando | Descrição |
|---------|-----------|
| `.bot addclass [className]` | Invoca um rndbot da classe desejada (dk = death knight) |

---

### Comandos de Override (sobrescrever comportamento)

| Comando | Descrição |
|---------|-----------|
| `do attack` | Força bot a atacar alvo |
| `do attack my target` | Força bot a atacar seu alvo |
| `do loot` | Força bot a saquear |
| `do add all loot` | Verifica todo corpo e objeto para saque |

---

### Comandos Gerais / Misc

| Comando | Descrição |
|---------|-----------|
| `who` | Mostra raça, spec, talentos, classe, nível, iLVL e zona do bot |
| `who [profissão]` | Mostra nível da profissão do bot |
| `help` | Bot lista todos comandos disponíveis no chat |

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
