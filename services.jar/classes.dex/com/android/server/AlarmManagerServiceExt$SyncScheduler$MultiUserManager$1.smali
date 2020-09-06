.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackagesAsUser(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

.field final synthetic val$userid:I


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iput p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->val$userid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->val$userid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    nop

    :goto_e
    move v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    # invokes: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isTargetApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    invoke-static {v4, v5, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # invokes: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnorePackage(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_59

    :cond_38
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->val$userid:I

    # invokes: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v4, v3, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_4b
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v6, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v6, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    goto :goto_59

    :catchall_56
    move-exception v6

    monitor-exit v5
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_56

    throw v6

    :cond_59
    :goto_59
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    :cond_5c
    return-void
.end method
