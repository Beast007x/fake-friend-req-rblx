--updated February 22/2023
getgenv().Request = function(Username, Picture)
    local BindableFunction  = Instance.new("BindableFunction", game.Workspace)
    local Username          = Username or "Username"
    local Picture           = Picture or "rbxassetid://1"
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title           = Username,
        Text            = "Sent you a friend request!",
        Icon            = Picture,
        Duration        = 5,
        Callback        = BindableFunction,
        Button1         = "Accept",
        Button2         = "Decline"
    })

    BindableFunction.OnInvoke = function(Response)
        if Response == "Accept" then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title       = "New Friend",
                Text        = Username,
                Icon        = Picture,
                Duration    = 5
            }) 

            BindableFunction:Destroy()
        end
    end 
end
