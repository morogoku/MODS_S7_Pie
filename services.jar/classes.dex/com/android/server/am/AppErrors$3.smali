.class Lcom/android/server/am/AppErrors$3;
.super Ljava/lang/Object;
.source "AppErrors.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrors;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrors;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/AppErrors$3;->this$0:Lcom/android/server/am/AppErrors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 10

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/AppNotRespondingDialog;

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppNotRespondingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->getLocationOnScreen([I)V

    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>APP_ANR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/AppNotRespondingDialog;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v3}, Landroid/widget/Button;->getWidth()I

    move-result v7

    div-int/2addr v7, v1

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v3}, Landroid/widget/Button;->getHeight()I

    move-result v7

    div-int/2addr v7, v1

    add-int/2addr v6, v7

    int-to-float v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "</GATE-M>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GATE"

    const-string v4, "<GATE-M>APP_ANR:Storing dumpstate at /data/log/, dumpstate_app_anr</GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/widget/Button;->performClick()Z

    return-void
.end method
