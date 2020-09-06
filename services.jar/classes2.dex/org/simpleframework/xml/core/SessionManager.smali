.class Lorg/simpleframework/xml/core/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/SessionManager$Reference;
    }
.end annotation


# instance fields
.field private local:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/simpleframework/xml/core/SessionManager$Reference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private create(Z)Lorg/simpleframework/xml/core/Session;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/core/SessionManager$Reference;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/SessionManager$Reference;-><init>(Z)V

    nop

    iget-object v1, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager$Reference;->get()Lorg/simpleframework/xml/core/Session;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/SessionManager$Reference;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager$Reference;->clear()I

    move-result v1

    if-nez v1, :cond_15

    iget-object v2, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    :cond_15
    return-void

    :cond_16
    new-instance v1, Lorg/simpleframework/xml/core/PersistenceException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Session does not exist"

    invoke-direct {v1, v3, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public open()Lorg/simpleframework/xml/core/Session;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    return-object v0
.end method

.method public open(Z)Lorg/simpleframework/xml/core/Session;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/SessionManager$Reference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager$Reference;->get()Lorg/simpleframework/xml/core/Session;

    move-result-object v1

    return-object v1

    :cond_f
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/SessionManager;->create(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v1

    return-object v1
.end method
