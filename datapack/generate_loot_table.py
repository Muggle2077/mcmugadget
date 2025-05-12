from pathlib import Path

loot_table_dir = Path(".") / "data/mugadget/loot_table"

item_type = "carrot_on_a_stick"
item_names = ["surface"]

for item_name in item_names:
    loot_table_path = loot_table_dir / f"{item_name}.json"
    if loot_table_path.exists():
        print(f"{loot_table_path} 已存在")
    else:
        with open(loot_table_path, encoding="utf-8", mode="w+") as f:
            f.write(
                f"""{{
  "pools": [
    {{
      "rolls": 1,
      "entries": [
        {{
          "type": "minecraft:item",
          "name": "minecraft:{item_type}",
          "functions": [
            {{
              "function": "minecraft:set_components",
              "components": {{
                "minecraft:custom_data": {{
                  "is_mugadget": true,
                  "mugadget": "{item_name}"
                }},
                "minecraft:item_name": {{
                  "translate": "mugadget.{item_name}"
                }},
                "minecraft:item_model": "mugadget:{item_name}"
              }}
            }}
          ]
        }}
      ]
    }}
  ]
}}"""
            )
        print(f"已生成 {loot_table_path}")
