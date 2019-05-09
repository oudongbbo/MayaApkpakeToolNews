.class public Lcom/maya/open/utils/AppUtils$AppInfo;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/utils/AppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private isSystem:Z

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private packagePath:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "packagePath"    # Ljava/lang/String;
    .param p5, "versionName"    # Ljava/lang/String;
    .param p6, "versionCode"    # I
    .param p7, "isSystem"    # Z

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    invoke-virtual {p0, p2}, Lcom/maya/open/utils/AppUtils$AppInfo;->setName(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0, p3}, Lcom/maya/open/utils/AppUtils$AppInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 582
    invoke-virtual {p0, p1}, Lcom/maya/open/utils/AppUtils$AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0, p4}, Lcom/maya/open/utils/AppUtils$AppInfo;->setPackagePath(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0, p5}, Lcom/maya/open/utils/AppUtils$AppInfo;->setVersionName(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0, p6}, Lcom/maya/open/utils/AppUtils$AppInfo;->setVersionCode(I)V

    .line 586
    invoke-virtual {p0, p7}, Lcom/maya/open/utils/AppUtils$AppInfo;->setSystem(Z)V

    .line 587
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagePath()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 554
    iget v0, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isSystem()Z
    .locals 1

    .line 522
    iget-boolean v0, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->isSystem:Z

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 518
    iput-object p1, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 519
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 534
    iput-object p1, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->name:Ljava/lang/String;

    .line 535
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagName"    # Ljava/lang/String;

    .line 542
    iput-object p1, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->packageName:Ljava/lang/String;

    .line 543
    return-void
.end method

.method public setPackagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagePath"    # Ljava/lang/String;

    .line 550
    iput-object p1, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->packagePath:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public setSystem(Z)V
    .locals 0
    .param p1, "isSystem"    # Z

    .line 526
    iput-boolean p1, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->isSystem:Z

    .line 527
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .line 558
    iput p1, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->versionCode:I

    .line 559
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 566
    iput-object p1, p0, Lcom/maya/open/utils/AppUtils$AppInfo;->versionName:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App\u5305\u540d\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/maya/open/utils/AppUtils$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nApp\u540d\u79f0\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {p0}, Lcom/maya/open/utils/AppUtils$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nApp\u56fe\u6807\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {p0}, Lcom/maya/open/utils/AppUtils$AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nApp\u8def\u5f84\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {p0}, Lcom/maya/open/utils/AppUtils$AppInfo;->getPackagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nApp\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {p0}, Lcom/maya/open/utils/AppUtils$AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nApp\u7248\u672c\u7801\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {p0}, Lcom/maya/open/utils/AppUtils$AppInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\u662f\u5426\u7cfb\u7edfApp\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {p0}, Lcom/maya/open/utils/AppUtils$AppInfo;->isSystem()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    return-object v0
.end method
