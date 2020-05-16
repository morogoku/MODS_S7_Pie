.class Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;
.super Ljava/lang/Thread;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnInstallPkgsThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;
    }
.end annotation


# instance fields
.field activeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field givenMsg:I

.field packagesList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field personaId:I

.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->packagesList:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->activeList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->packagesList:Ljava/util/Set;

    iput p4, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->givenMsg:I

    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->access$200(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string p1, "PersonaManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveAdminsInfo for personaId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    invoke-virtual {p1, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->activeList:Ljava/util/List;

    return-void
.end method

.method private deletePackage(ILjava/lang/String;)Z
    .registers 10

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackage request for personaId -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and pkg-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;-><init>(Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;)V

    :try_start_23
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, v0

    move v5, p1

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    monitor-enter v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_37} :catch_5e

    :goto_37
    :try_start_37
    iget-boolean v2, v0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->finished:Z
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_5b

    if-nez v2, :cond_59

    :try_start_3b
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting in while loop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->finished:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_56} :catch_57
    .catchall {:try_start_3b .. :try_end_56} :catchall_5b

    goto :goto_58

    :catch_57
    move-exception v2

    :goto_58
    goto :goto_37

    :cond_59
    :try_start_59
    monitor-exit v0

    goto :goto_75

    :catchall_5b
    move-exception v2

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v2
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception v1

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackage exception -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->result:Z

    return v1
.end method

.method private unInstallPackages(ILjava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInstallPackages request for personaid -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1a

    return-void

    :cond_1a
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->deletePackage(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unInstallPackages : package ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") failed to uninstall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :cond_4e
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unInstallPackages : package ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") successfully uninstalled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    goto :goto_1f

    :cond_6b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "PersonaManagerService"

    const-string v1, "UnInstallPkgsThread has started..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->personaId:I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->packagesList:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->unInstallPackages(ILjava/util/Set;)V

    return-void
.end method
