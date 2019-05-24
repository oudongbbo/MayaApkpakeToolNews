.class public Lcom/maya/sdk/m/controller/PlatformLogCore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/PlatformLogInterface;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/maya/sdk/m/platform/PlatformLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->a:Landroid/content/Context;

    .line 18
    new-instance v0, Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-direct {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/platform/PlatformLogger;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onDestroy()V

    return-void
.end method

.method public onInit(Landroid/content/Context;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onInit(Landroid/content/Context;)V

    return-void
.end method

.method public onLogin(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onLogin(Landroid/os/Bundle;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onPause()V

    return-void
.end method

.method public onPayFinish(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onPayFinish(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRegister(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/platform/PlatformLogger;->onRegister(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformLogCore;->b:Lcom/maya/sdk/m/platform/PlatformLogger;

    invoke-virtual {v0}, Lcom/maya/sdk/m/platform/PlatformLogger;->onStop()V

    return-void
.end method
