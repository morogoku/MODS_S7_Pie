.class public final synthetic Lcom/android/server/enterprise/container/-$$Lambda$KnoxMUMContainerPolicy$2$U3TqxCROMw5vgJiVpyt2gV7i2nA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/container/-$$Lambda$KnoxMUMContainerPolicy$2$U3TqxCROMw5vgJiVpyt2gV7i2nA;->f$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;

    iput-object p2, p0, Lcom/android/server/enterprise/container/-$$Lambda$KnoxMUMContainerPolicy$2$U3TqxCROMw5vgJiVpyt2gV7i2nA;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/container/-$$Lambda$KnoxMUMContainerPolicy$2$U3TqxCROMw5vgJiVpyt2gV7i2nA;->f$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;

    iget-object v1, p0, Lcom/android/server/enterprise/container/-$$Lambda$KnoxMUMContainerPolicy$2$U3TqxCROMw5vgJiVpyt2gV7i2nA;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->lambda$onReceive$0(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;Landroid/content/Intent;)V

    return-void
.end method
