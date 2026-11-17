# HomeTwin

HomeTwin shows your home in 3D with the walls cut at 1.2 m, so you can see into every room. The devices of this Home Assistant (lights, climate, covers, locks, vacuums, sensors) show their live state in their rooms and can be switched from there. You can also import your floor plan and place furniture at its real size.

## First start

1. Start the add-on and open **HomeTwin** in the sidebar. It is connected to this Home Assistant already; no token to create.
2. The sample flat is shown first. **导入户型** (top right) imports your own floor plan; this needs a model that can read images (see the options below).
3. **设备 → 接入 Home Assistant** maps your entities onto devices in the rooms; **自动映射** does most of it.

## Options

| Option | |
|---|---|
| `password` | asks for a password before the UI opens. Not needed inside Home Assistant (it already signs you in); set one before turning on the port below |
| `llm_base_url`, `llm_api_key`, `llm_model` | an OpenAI-compatible model (a cloud API, or a local one such as Ollama at `http://<host>:11434/v1`). It reads floor plans and runs the 家庭助手. Without it everything else works |
| `vr_import` | turns on the experimental import of 贝壳/如视 VR scans. Only import scans of your own home, for your own use |

The port (6417) is off by default. Set it in the Network section to open HomeTwin without going through Home Assistant, and set a `password` first.

Layouts, devices and imported homes are kept in the add-on's data and included in Home Assistant backups.
