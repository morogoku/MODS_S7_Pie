.class Lcom/android/systemui/qs/QSServiceBox$1;
.super Ljava/lang/Object;
.source "QSServiceBox.java"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSServiceBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSServiceBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSServiceBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSServiceBox$1;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDesktopModeStateChanged$0(Lcom/android/systemui/qs/QSServiceBox$1;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$1;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSServiceBox;->updateEverything()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$1;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/qs/QSServiceBox;->mIsDexEnabling:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$1;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$1$MgNEgojwU4r_6lFKPL2yVpRtRsg;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$1$MgNEgojwU4r_6lFKPL2yVpRtRsg;-><init>(Lcom/android/systemui/qs/QSServiceBox$1;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSServiceBox;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
