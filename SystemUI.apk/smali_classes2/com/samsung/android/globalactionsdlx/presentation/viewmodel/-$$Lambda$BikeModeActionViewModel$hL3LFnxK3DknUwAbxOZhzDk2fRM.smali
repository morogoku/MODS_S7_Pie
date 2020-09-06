.class public final synthetic Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/-$$Lambda$BikeModeActionViewModel$hL3LFnxK3DknUwAbxOZhzDk2fRM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/-$$Lambda$BikeModeActionViewModel$hL3LFnxK3DknUwAbxOZhzDk2fRM;->f$0:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;

    iput-boolean p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/-$$Lambda$BikeModeActionViewModel$hL3LFnxK3DknUwAbxOZhzDk2fRM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/-$$Lambda$BikeModeActionViewModel$hL3LFnxK3DknUwAbxOZhzDk2fRM;->f$0:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;

    iget-boolean v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/-$$Lambda$BikeModeActionViewModel$hL3LFnxK3DknUwAbxOZhzDk2fRM;->f$1:Z

    invoke-static {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;->lambda$onPress$0(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/BikeModeActionViewModel;Z)V

    return-void
.end method
