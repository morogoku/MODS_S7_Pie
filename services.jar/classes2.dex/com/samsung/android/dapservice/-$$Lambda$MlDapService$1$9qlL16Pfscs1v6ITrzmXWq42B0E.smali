.class public final synthetic Lcom/samsung/android/dapservice/-$$Lambda$MlDapService$1$9qlL16Pfscs1v6ITrzmXWq42B0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/dapservice/MlDapService$1;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/dapservice/MlDapService$1;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/dapservice/-$$Lambda$MlDapService$1$9qlL16Pfscs1v6ITrzmXWq42B0E;->f$0:Lcom/samsung/android/dapservice/MlDapService$1;

    iput-object p2, p0, Lcom/samsung/android/dapservice/-$$Lambda$MlDapService$1$9qlL16Pfscs1v6ITrzmXWq42B0E;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/dapservice/-$$Lambda$MlDapService$1$9qlL16Pfscs1v6ITrzmXWq42B0E;->f$0:Lcom/samsung/android/dapservice/MlDapService$1;

    iget-object v1, p0, Lcom/samsung/android/dapservice/-$$Lambda$MlDapService$1$9qlL16Pfscs1v6ITrzmXWq42B0E;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/samsung/android/dapservice/MlDapService$1;->lambda$onReceive$0(Lcom/samsung/android/dapservice/MlDapService$1;Landroid/content/Intent;)V

    return-void
.end method
