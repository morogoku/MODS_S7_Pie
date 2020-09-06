.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->sendDtmfTone(CI)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field final synthetic val$call:Landroid/telecom/Call;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/telecom/Call;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->val$call:Landroid/telecom/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/knox/incallui/TelecomAdapter;->getInstance()Lcom/samsung/android/knox/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->val$call:Landroid/telecom/Call;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/incallui/TelecomAdapter;->stopDtmfTone(Landroid/telecom/Call;)V

    return-void
.end method
