local running_animation = {
    layers = {
        {
            filename = "__chiikat__/spritesheet-walk.png",
            width = 300,--128,
            height = 300,--128,
            shift = util.by_pixel(0.0, 0.0),
            frame_count = 15,
            direction_count = 8,
            animation_speed = 1,
            scale = 0.8 * 128/300
        },
        {
            filename = "__chiikat__/spritesheet-walk-shadow.png",
            width = 300,--128,
            height = 300,--128,
            shift = util.by_pixel(6, 0),
            frame_count = 15,
            direction_count = 8,
            animation_speed = 1,
            draw_as_shadow = true,
            scale = 0.8 * 128/300
        }
    }
}

local mining_animation =
{
    layers = {
        {
            stripes = {
                {
                    filename = "__chiikat__/spritesheet-mine.png",
                    width_in_frames = 20,
                    height_in_frames = 8
                }
            },
            width = 300,--128,
            height = 300,--128,
            shift = util.by_pixel(0, 0),
            frame_count = 20,
            direction_count = 8,
            animation_speed = 1,
            scale = 0.8 * 128/300
        },
        {
            stripes = {
                {
                    filename = "__chiikat__/spritesheet-mine-shadow.png",
                    width_in_frames = 20,
                    height_in_frames = 8
                }
            },
            width = 300,--128,
            height = 300,--128,
            shift = util.by_pixel(0, 0),
            frame_count = 20,
            direction_count = 8,
            animation_speed = 1,
            draw_as_shadow = true,
            scale = 0.8 * 128/300
        }
    }
}


data.raw["unit"]["thikat"].run_animation = running_animation
data.raw["unit"]["thikat-turd"].run_animation = running_animation

new_attack_parameters = table.deepcopy(data.raw["unit"]["thikat"].attack_parameters)
new_attack_parameters.animation = mining_animation
new_attack_parameters.cooldown = 20
data.raw["unit"]["thikat"].attack_parameters = new_attack_parameters
data.raw["unit"]["thikat-turd"].attack_parameters = new_attack_parameters

data.raw["simple-entity"]["thikats-mineable-proxy"].attack_reaction = table.deepcopy(
    data.raw["simple-entity"]["digosaurus-mineable-proxy"].attack_reaction)
