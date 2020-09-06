.class Lcom/samsung/android/MtpApplication/MtpPlaylistObserver$1;
.super Ljava/lang/Object;
.source "MtpPlaylistObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->setContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    invoke-virtual {v0}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->createPlaFiles()V

    return-void
.end method
