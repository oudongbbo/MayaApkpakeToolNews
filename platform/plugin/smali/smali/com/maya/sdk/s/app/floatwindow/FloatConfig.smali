.class public Lcom/maya/sdk/s/app/floatwindow/FloatConfig;
.super Ljava/lang/Object;
.source "FloatConfig.java"


# instance fields
.field private final FloatBall:Ljava/lang/String;

.field private final FloatButtonBBS:Ljava/lang/String;

.field private final FloatButtonCService:Ljava/lang/String;

.field private final FloatButtonExtra:Ljava/lang/String;

.field private final FloatButtonGame:Ljava/lang/String;

.field private final FloatButtonGift:Ljava/lang/String;

.field private final FloatButtonMsg:Ljava/lang/String;

.field private final FloatButtonUcenter:Ljava/lang/String;

.field private final FloatConfig:Ljava/lang/String;

.field private FloatLastX:Ljava/lang/String;

.field private FloatLastY:Ljava/lang/String;

.field private IsTouch:Ljava/lang/String;

.field private config:Landroid/content/SharedPreferences;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "maya_float_config"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatConfig:Ljava/lang/String;

    .line 18
    const-string v0, "is_touch"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->IsTouch:Ljava/lang/String;

    .line 19
    const-string v0, "float_last_x"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatLastX:Ljava/lang/String;

    .line 20
    const-string v0, "float_last_y"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatLastY:Ljava/lang/String;

    .line 80
    const-string v0, "maya_float_ball"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatBall:Ljava/lang/String;

    .line 81
    const-string v0, "maya_float_ucenter"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatButtonUcenter:Ljava/lang/String;

    .line 82
    const-string v0, "maya_float_msg"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatButtonMsg:Ljava/lang/String;

    .line 83
    const-string v0, "maya_float_gift"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatButtonGift:Ljava/lang/String;

    .line 84
    const-string v0, "maya_float_cs"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatButtonCService:Ljava/lang/String;

    .line 85
    const-string v0, "maya_float_bbs"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatButtonBBS:Ljava/lang/String;

    .line 86
    const-string v0, "maya_float_game"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatButtonGame:Ljava/lang/String;

    .line 87
    const-string v0, "maya_float_extra"

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatButtonExtra:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "maya_float_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    .line 28
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    .line 29
    return-void
.end method


# virtual methods
.method public EditorCommit()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method

.method public getFloatLastX()F
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatLastX:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloatLastY()F
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatLastY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getIsTouchFW()Ljava/lang/Boolean;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->IsTouch:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isShowFloatBall()Z
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "maya_float_ball"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowFloatButtonBBS()Z
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "maya_float_bbs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowFloatButtonCService()Z
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "maya_float_cs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowFloatButtonExtra()Z
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "maya_float_extra"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowFloatButtonGame()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "maya_float_game"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowFloatButtonGift()Z
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "maya_float_gift"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowFloatButtonMsg()Z
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "maya_float_msg"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowFloatButtonUcenter()Z
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->config:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "maya_float_ucenter"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFloatLastX(F)V
    .locals 2
    .param p1, "x"    # F

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatLastX:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 33
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    return-void
.end method

.method public setFloatLastY(F)V
    .locals 2
    .param p1, "y"    # F

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->FloatLastY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 42
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method

.method public setIsTouchFW()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->IsTouch:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method

.method public setShowFloatBall(Z)V
    .locals 2
    .param p1, "dvalue"    # Z

    .line 90
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "maya_float_ball"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method public setShowFloatButtonBBS(Z)V
    .locals 2
    .param p1, "dvalue"    # Z

    .line 132
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "maya_float_bbs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method

.method public setShowFloatButtonCService(Z)V
    .locals 2
    .param p1, "dvalue"    # Z

    .line 124
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "maya_float_cs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 125
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method public setShowFloatButtonExtra(Z)V
    .locals 2
    .param p1, "dvalue"    # Z

    .line 148
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "maya_float_extra"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 149
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    return-void
.end method

.method public setShowFloatButtonGame(Z)V
    .locals 2
    .param p1, "dvalue"    # Z

    .line 140
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "maya_float_game"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method public setShowFloatButtonGift(Z)V
    .locals 2
    .param p1, "dvalue"    # Z

    .line 116
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "maya_float_gift"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    return-void
.end method

.method public setShowFloatButtonMsg(Z)V
    .locals 2
    .param p1, "dvalue"    # Z

    .line 108
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "maya_float_msg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    return-void
.end method

.method public setShowFloatButtonUcenter(Z)V
    .locals 2
    .param p1, "dvalue"    # Z

    .line 99
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "maya_float_ucenter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method
