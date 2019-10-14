.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$oFZWd_5l4u08McNilyJMYYYB99w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$oFZWd_5l4u08McNilyJMYYYB99w;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$oFZWd_5l4u08McNilyJMYYYB99w;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$oFZWd_5l4u08McNilyJMYYYB99w;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$oFZWd_5l4u08McNilyJMYYYB99w;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$oFZWd_5l4u08McNilyJMYYYB99w;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$oFZWd_5l4u08McNilyJMYYYB99w;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/am/SideScreenManagerService;->lambda$resizeSideScreenStackWithScale$12(Lcom/android/server/am/SideScreenManagerService;IZ)V

    return-void
.end method
