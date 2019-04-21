.class public final synthetic Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$DesktopModeManagerWrapper$n0Ir6R_tGzngpLXjn4VGNTH1O6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$DesktopModeManagerWrapper$n0Ir6R_tGzngpLXjn4VGNTH1O6A;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$DesktopModeManagerWrapper$n0Ir6R_tGzngpLXjn4VGNTH1O6A;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/samsung/android/globalactionsdlx/util/DesktopModeManagerWrapper;->lambda$registerModeChangedListener$0(Ljava/lang/Runnable;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method
