.class Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper$1;
.super Landroid/database/ContentObserver;
.source "ContentObserverWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper;->registerObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper$1;->this$0:Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/ContentObserverWrapper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
