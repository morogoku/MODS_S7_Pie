.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$luXbgCIL_ky8Z8V4DxgdIlBHF04;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field private final synthetic f$1:Lcom/android/server/pm/ShortcutUser;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$luXbgCIL_ky8Z8V4DxgdIlBHF04;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$luXbgCIL_ky8Z8V4DxgdIlBHF04;->f$1:Lcom/android/server/pm/ShortcutUser;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$luXbgCIL_ky8Z8V4DxgdIlBHF04;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$luXbgCIL_ky8Z8V4DxgdIlBHF04;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$luXbgCIL_ky8Z8V4DxgdIlBHF04;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$luXbgCIL_ky8Z8V4DxgdIlBHF04;->f$1:Lcom/android/server/pm/ShortcutUser;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$luXbgCIL_ky8Z8V4DxgdIlBHF04;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$luXbgCIL_ky8Z8V4DxgdIlBHF04;->f$3:Z

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/pm/ShortcutService;->lambda$rescanUpdatedPackagesLocked$7(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;IZLandroid/content/pm/ApplicationInfo;)V

    return-void
.end method
