.class public final Lcom/maya/open/utils/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllBackgroundProcesses(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 98
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 101
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v2, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 102
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    goto :goto_0

    .line 103
    :cond_0
    return-object v2
.end method

.method public static getForegroundProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    move-object/from16 v1, p0

    const-string v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/ActivityManager;

    .line 44
    .local v2, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 45
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 47
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 48
    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    .line 50
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 52
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/4 v5, 0x0

    if-le v0, v4, :cond_b

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 54
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 55
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000

    invoke-virtual {v4, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 56
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 57
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 59
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 60
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    const-string v8, "appops"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager;

    .line 61
    .local v8, "aom":Landroid/app/AppOpsManager;
    const-string v9, "android:get_usage_stats"

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    .line 62
    invoke-virtual {v1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    :cond_2
    const-string v9, "android:get_usage_stats"

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_3

    .line 65
    const-string v9, "getForegroundApp"

    const-string v10, "\u6ca1\u6709\u6253\u5f00\"\u6709\u6743\u67e5\u770b\u4f7f\u7528\u6743\u9650\u7684\u5e94\u7528\"\u9009\u9879"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-object v5

    .line 68
    :cond_3
    const-string v9, "usagestats"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/app/usage/UsageStatsManager;

    .line 69
    .local v10, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-wide/from16 v16, v11

    .line 70
    .local v16, "endTime":J
    const-wide/32 v11, 0x240c8400

    sub-long v18, v16, v11

    .line 71
    .local v18, "beginTime":J
    const/4 v11, 0x4

    move-wide/from16 v12, v18

    move-wide/from16 v14, v16

    invoke-virtual/range {v10 .. v15}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v9

    .line 72
    .local v9, "usageStatses":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    .line 73
    :cond_4
    const/4 v11, 0x0

    .line 74
    .local v11, "recentStats":Landroid/app/usage/UsageStats;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/usage/UsageStats;

    .line 75
    .local v13, "usageStats":Landroid/app/usage/UsageStats;
    if-eqz v11, :cond_5

    invoke-virtual {v13}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v14

    invoke-virtual {v11}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v20

    cmp-long v22, v14, v20

    if-lez v22, :cond_6

    .line 76
    :cond_5
    move-object v11, v13

    .line 78
    .end local v13    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_6
    goto :goto_1

    .line 79
    :cond_7
    if-nez v11, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v11}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v12

    :goto_2
    return-object v5

    .line 72
    .end local v11    # "recentStats":Landroid/app/usage/UsageStats;
    :cond_9
    :goto_3
    return-object v5

    .line 80
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "aom":Landroid/app/AppOpsManager;
    .end local v9    # "usageStatses":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v10    # "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    .end local v16    # "endTime":J
    .end local v18    # "beginTime":J
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 82
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_4

    .line 84
    :cond_a
    const-string v0, "getForegroundApp"

    const-string v8, "\u65e0\"\u6709\u6743\u67e5\u770b\u4f7f\u7528\u6743\u9650\u7684\u5e94\u7528\"\u9009\u9879"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_b
    :goto_4
    return-object v5
.end method

.method public static killAllBackgroundProcesses(Landroid/content/Context;)Ljava/util/Set;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 114
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 117
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v8, v6, v5

    .line 118
    .local v8, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 119
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v8    # "pkg":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 121
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 124
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 125
    .local v9, "pkg":Ljava/lang/String;
    invoke-interface {v2, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 124
    .end local v9    # "pkg":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 127
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    goto :goto_2

    .line 128
    :cond_3
    return-object v2
.end method

.method public static killBackgroundProcesses(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 139
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 140
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 142
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 143
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 146
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 149
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 150
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 151
    const/4 v2, 0x0

    return v2

    .line 153
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    goto :goto_1

    .line 154
    :cond_5
    return v2

    .line 148
    :cond_6
    :goto_2
    return v2

    .line 141
    :cond_7
    :goto_3
    return v2
.end method
