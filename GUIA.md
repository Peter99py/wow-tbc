# 🎮 WoW TBC Offline - Guia Rápido

## 📋 Sumário
- [Criar Conta](#1-criar-conta)
- [Criar Bots](#2-criar-bots-pra-te-ajudar)
- [Comandos do Jogo](#3-comandos-do-jogo)
- [Comandos GM](#4-comandos-gm-uteis)
- [Dicas de Gameplay](#5-dicas-de-gameplay)

---

## 1. Criar Conta

### 1.1 Abrir console do servidor
```bash
cd /home/pedro/projetos/pessoais/wow-tbc-off
make console
```

### 1.2 Criar sua conta de ADMIN
No console do servidor, digite:
```
account create SEU_NOME SUA_SENHA
account set addon SEU_NOME 1
account set gmlevel SEU_NOME 3 -1
```

> **Contas prontas** (se não quiser criar a sua):
> - Admin: `Thaurissan` / `administrator`
> - Jogador: `Lokhtos` / `mypassword`

> Para sair do console: `Ctrl+P`, solta, depois `Ctrl+Q`

---

## 2. Criar Bots (pra te ajudar)

### Como funciona
Com a configuração atual, quando você **loga no jogo**, seus **outros personagens da mesma conta entram como bots automaticamente**.

### Passo a passo

1. **Crie seu personagem principal** (tela de criação de personagem)
   - Ex: Humano Paladino (tank/healer)

2. **Crie personagens extras** na sua conta
   - Volte pra tela de seleção de personagens
   - Clique em "Create Character"
   - Crie um grupo equilibrado:

| Personagem | Classe | Função |
|------------|--------|--------|
| **Seu Main** | O que quiser | Você controla |
| **Healer** | Priest ou Paladino | Cura o grupo |
| **Tank** | Warrior ou Druida | Segura os mobs |
| **DPS 1** | Mage ou Warlock | Dano à distância |
| **DPS 2** | Rogue ou Hunter | Dano corpo/distância |

3. **Logue com seu personagem principal**
   - Os alts entram automaticamente como bots no mundo

4. **Convide os bots pro grupo**
   ```
   .bot add NomeDoBot
   ```
   Repita pra cada bot que quiser no grupo.

---

## 3. Comandos do Jogo

### Comandos de Bot (no chat do jogo)

| Comando | Descrição |
|---------|-----------|
| `.bot add NOME` | Adiciona bot ao seu grupo |
| `.bot remove NOME` | Remove bot do grupo |
| `.bot tweak` | Abre menu pra configurar função do bot |
| `.bot lag` | Verifica lag dos bots |
| `.bot stats` | Mostra status dos bots |

### Comandos de Grupo

| Comando | Descrição |
|---------|-----------|
| `/inv NOME` | Convida jogador pro grupo |
| `/follow` | Segue o alvo |
| `/assist NOME` | Mira no mesmo alvo |
| `/target NOME` | Mira no jogador/ monstro |
| `P (tecla padrão)` | Abre a janela do grupo |

---

## 4. Comandos GM (úteis)

Sua conta é admin (gmlevel 3), então você tem acesso a:

### Level e Progresso

| Comando | Descrição |
|---------|-----------|
| `.levelup 70` | Sobe pro nível máximo |
| `.levelup 10` | Sobe 10 níveis |
| `.learn all_myclass` | Aprende todas as spells da sua classe |
| `.learn all_mytalents` | Aprende todas as talentos |
| `.maxskill` | Maxima todas as profissões |

### Itens e Dinheiro

| Comando | Descrição |
|---------|-----------|
| `.money 10000000` | Adiciona 1000 gold |
| `.additem #ID` | Adiciona item (ex: `.additem 12345`) |
| `.lookup item NOME` | Procura ID do item pelo nome |
| `.bank` | Abre seu banco |
| `.repairitems` | Repara todos os itens |

### Teleportes

| Comando | Descrição |
|---------|-----------|
| `.tele STORMWIND` | Vai pra Stormwind (Aliados) |
| `.tele ORGRIMMAR` | Vai pra Orgrimmar (Horda) |
| `.tele list` | Lista todos os teleportes |
| `.lookup tele PALAVRA` | Procura teleporte pela palavra |
| `.goname JOGADOR` | Vai até o jogador |
| `.namego JOGADOR` | Puxa o jogador até você |
| `.recall` | Volta pra posição anterior |

### Combate e Status

| Comando | Descrição |
|---------|-----------|
| `.revive` | Revive (você ou o alvo) |
| `.die` | Mata o alvo |
| `.combatstop` | Para o combate |
| `.respawn` | Ressuscita criaturas próximas |
| `.cooldown` | Reseta todos os cooldowns |
| `.modify speed 3` | Aumenta velocidade em 3x |
| `.modify aspeed 5` | Aumenta TODAS velocidades |

### Utilidades

| Comando | Descrição |
|---------|-----------|
| `.gm on/off` | Ativa/desativa modo GM |
| `.gm fly on/off` | Ativa/desativa voo GM |
| `.gm visible on/off` | Fica invisível para mobs |
| `.explorecheat 1` | Revela todo o mapa |
| `.save` | Salva o personagem |
| `.saveall` | Salva todos os personagens |
| `.start` | Volta pro inicio da sua raça |
| `.dismount` | Desmonta |

---

## 5. Dicas de Gameplay

### Subindo de nível com bots

```
1. Crie seus bots ( Priest, Warrior, Mage )
2. Logue com seu main
3. .bot add Priest
4. .bot add Warrior
5. .bot add Mage
6. Vá matar mobs - os bots ajudam
7. Configure cada bot: .bot tweak
   - Warrior → tank
   - Priest → healer
   - Mage → dps
```

### Fazendo Dungeons com bots

```
1. Vá até a entrada da dungeon
2. Certifique-se de ter tank + healer + dps no grupo
3. Entre na dungeon
4. Os bots seguem você e fazem a função deles
```

### Se os bots estiverem atrasando o jogo

O servidor tem uma config `aiplayerbot.conf` com `botActiveAlone` que controla quantos bots ficam ativos. Com poucos bots (3-5 alts), não deve ter lag.

### Resetar tudo (se quiser começar do zero)

```bash
cd /home/pedro/projetos/pessoais/wow-tbc-off
make down
docker volume rm bots_cmangos-tbc-database
make up
```

---

## 🚀 Fluxo Completo pra Jogar

```bash
# 1. Ligar servidor
cd /home/pedro/projetos/pessoais/wow-tbc-off
make up

# 2. Aguardar uns 2-3 min
make status   # até mostrar "healthy"

# 3. Abrir Wow.exe e logar

# 4. No jogo, chamar os bots
.bot add MeuPriest
.bot add MeuWarrior
.bot add MeuMage

# 5. Jogar! Subir de nível, fazer dungeons...

# 6. Quando terminar, desligar
make down
```

---

> 💡 **Dica:** Comece com o mínimo de bots (2-3) até pegar o jeito. Depois adicione mais se quiser.
