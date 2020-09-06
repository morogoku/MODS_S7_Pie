.class Lcom/samsung/android/MtpApplication/MtpReceiver$3;
.super Ljava/lang/Object;
.source "MtpReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/MtpApplication/MtpReceiver;->startDBupdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->deleteFilesTable()V

    invoke-virtual {v0}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->updateFilesTable()V

    :cond_0
    return-void
.end method
