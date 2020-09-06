.class public Lcom/samsung/android/audio/AppCategorizer;
.super Ljava/lang/Object;
.source "AppCategorizer.java"


# instance fields
.field private final appList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mSettingsHelper:Lcom/samsung/android/audio/AudioSettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/audio/AudioSettingsHelper;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/samsung/android/audio/AppCategorizer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/audio/AppCategorizer;->mSettingsHelper:Lcom/samsung/android/audio/AudioSettingsHelper;

    iget-object v0, p0, Lcom/samsung/android/audio/AppCategorizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/audio/AppCategorizer;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/samsung/android/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_19
    iget-object v1, p0, Lcom/samsung/android/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/samsung/android/audio/AppCategorizer;->mSettingsHelper:Lcom/samsung/android/audio/AudioSettingsHelper;

    invoke-virtual {v2}, Lcom/samsung/android/audio/AudioSettingsHelper;->getPackageList()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_26

    throw v1
.end method


# virtual methods
.method public checkExist(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSelectedPackages()[Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public putPackage(ILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/audio/AppCategorizer;->checkExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/audio/AppCategorizer;->mSettingsHelper:Lcom/samsung/android/audio/AudioSettingsHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/audio/AudioSettingsHelper;->putPackage(ILjava/lang/String;)V

    return-void
.end method

.method public removePackage(I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/audio/AppCategorizer;->mSettingsHelper:Lcom/samsung/android/audio/AudioSettingsHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/audio/AudioSettingsHelper;->removePackage(I)V

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
