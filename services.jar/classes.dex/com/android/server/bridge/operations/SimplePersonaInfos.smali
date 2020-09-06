.class public Lcom/android/server/bridge/operations/SimplePersonaInfos;
.super Ljava/lang/Object;
.source "SimplePersonaInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    }
.end annotation


# static fields
.field public static final LAST_IMPORT_CALENDAR_STATUS:Ljava/lang/String; = "last_import_calendar_status"

.field public static final LAST_IMPORT_CONTACT_STATUS:Ljava/lang/String; = "last_import_contact_status"

.field static final MAX:I = 0x5

.field public static final PERSONA_ID:Ljava/lang/String; = "user_id"

.field public static final PERSONA_NAME:Ljava/lang/String; = "user_name"

.field public static final PERSONA_TYPE:Ljava/lang/String; = "type"

.field static final TAG:Ljava/lang/String; = "SimplePersonaInfos"

.field private static mCtx:Landroid/content/Context;


# instance fields
.field isInitialized:Z

.field lock:Ljava/lang/Object;

.field mExtraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    sput-object p1, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    return-void
.end method

.method private addItem(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isExist(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;-><init>(Lcom/android/server/bridge/operations/SimplePersonaInfos;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput p1, v0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    iput-object p2, v0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->name:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->type:Ljava/lang/String;

    const-string v2, "KNOX"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2a

    :cond_25
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_2a
    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "user_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "last_import_contact_status"

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "last_import_calendar_status"

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isExist(I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    iget v2, v2, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    if-ne v2, p1, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return v0
.end method


# virtual methods
.method public getExtraInfo(I)Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getItem(I)Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1e

    if-ltz p1, :cond_1e

    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    monitor-exit v0

    return-object v1

    :cond_1e
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getSimplePersonaInfo(I)Landroid/os/Bundle;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getExtraInfo(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1
.end method

.method public initialize()V
    .registers 10

    sget-object v0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez v0, :cond_13

    return-void

    :cond_13
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_23

    const-string v1, "SimplePersonaInfos"

    const-string/jumbo v3, "initialize() failed, personas is null"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    iget-object v3, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iget-object v3, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :goto_2c
    :try_start_2c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4c

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    if-eqz v5, :cond_49

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isBBCContainer()Z

    move-result v6

    if-nez v6, :cond_49

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string v8, "default"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->addItem(ILjava/lang/String;Ljava/lang/String;)V

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_4c
    iput-boolean v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    monitor-exit v3

    return-void

    :catchall_50
    move-exception v1

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_2c .. :try_end_52} :catchall_50

    throw v1
.end method

.method public removeItem(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    iget v2, v2, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    if-ne p1, v2, :cond_26

    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_34

    throw v1
.end method
