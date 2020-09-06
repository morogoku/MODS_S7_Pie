.class Lcom/samsung/android/MtpApplication/MtpApplication$1;
.super Ljava/lang/Object;
.source "MtpApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/MtpApplication/MtpApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/MtpApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/MtpApplication/MtpApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpApplication$1;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpApplication;->access$000()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication$1;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpApplication;->access$000()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/MtpApplication/MtpApplication;->access$100(Lcom/samsung/android/MtpApplication/MtpApplication;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/MtpApplication/MtpApplication;->access$002(I)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpApplication$1;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpApplication;->access$000()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/MtpApplication/MtpApplication;->access$100(Lcom/samsung/android/MtpApplication/MtpApplication;I)V

    :goto_0
    return-void
.end method
