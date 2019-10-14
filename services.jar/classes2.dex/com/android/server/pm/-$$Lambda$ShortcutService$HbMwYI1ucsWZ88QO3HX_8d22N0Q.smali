.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$HbMwYI1ucsWZ88QO3HX_8d22N0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$HbMwYI1ucsWZ88QO3HX_8d22N0Q;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$HbMwYI1ucsWZ88QO3HX_8d22N0Q;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutService;->lambda$getBitmapPathList$8(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
