.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$UiManager$nSCs0pp_-ThPvjWPuq8W5Aua_Ic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/UiManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$nSCs0pp_-ThPvjWPuq8W5Aua_Ic;->f$0:Lcom/android/server/desktopmode/UiManager;

    iput p2, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$nSCs0pp_-ThPvjWPuq8W5Aua_Ic;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$nSCs0pp_-ThPvjWPuq8W5Aua_Ic;->f$0:Lcom/android/server/desktopmode/UiManager;

    iget v1, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$nSCs0pp_-ThPvjWPuq8W5Aua_Ic;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleShowNotification$11(Lcom/android/server/desktopmode/UiManager;I)V

    return-void
.end method