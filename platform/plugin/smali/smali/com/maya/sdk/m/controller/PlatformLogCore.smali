.class public Lcom/maya/sdk/m/controller/PlatformLogCore;
.super Ljava/lang/Object;
.source "PlatformLogCore.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/PlatformLogInterface;


# instance fields
.field private context:Landroid/content/Context;

.field private platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->context:Landroid/content/Context;

    .line 18
    new-instance v0, Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-direct {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    .line 19
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/platform/PlatformLogger;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 69
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onDestroy()V

    .line 46
    return-void
.end method

.method public onInit(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onInit(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public onLogin(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onLogin(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onNewIntent(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onPause()V

    .line 50
    return-void
.end method

.method public onPayFinish(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onPayFinish(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onRegister(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 27
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onRegister(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onRestart()V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onResume()V

    .line 42
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onStart()V

    .line 58
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->platformLogger:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onStop()V

    .line 62
    return-void
.end method
