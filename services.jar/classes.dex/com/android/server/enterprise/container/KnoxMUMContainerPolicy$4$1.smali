.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

.field final synthetic val$newState:Lcom/samsung/android/knox/SemPersonaState;

.field final synthetic val$oldState:Lcom/samsung/android/knox/SemPersonaState;

.field final synthetic val$personaId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    iput-object p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    iput p4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersonaObserver.onStateChange() inside handler state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(Lcom/samsung/android/knox/SemPersonaState;)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1600(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v8

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(Lcom/samsung/android/knox/SemPersonaState;)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1600(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v9

    const/4 v10, 0x0

    if-eq v9, v8, :cond_76

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_69

    array-length v12, v11

    move v13, v10

    :goto_55
    if-ge v13, v12, :cond_76

    aget-object v14, v11, v13

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    move-object v2, v14

    move v4, v7

    move v5, v8

    move v6, v9

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_55

    :cond_69
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    move v4, v7

    move v5, v8

    move v6, v9

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    :cond_76
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    :cond_8a
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a9

    array-length v2, v1

    :goto_99
    if-ge v10, v2, :cond_b3

    aget-object v3, v1, v10

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v4, v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v4, v3, v5, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_99

    :cond_a9
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;

    iget-object v2, v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4$1;->val$personaId:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v2, v3, v4, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    :cond_b3
    return-void
.end method
