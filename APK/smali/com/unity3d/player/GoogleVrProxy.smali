.class Lcom/unity3d/player/GoogleVrProxy;
.super Lcom/unity3d/player/b;

# interfaces
.implements Lcom/unity3d/player/GoogleVrVideo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/GoogleVrProxy$a;
    }
.end annotation


# instance fields
.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/util/Vector;

.field private j:Landroid/view/SurfaceView;

.field private k:Lcom/unity3d/player/GoogleVrProxy$a;

.field private l:Ljava/lang/Thread;

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/d;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "Google VR"

    invoke-direct {p0, v0, p1}, Lcom/unity3d/player/b;-><init>(Ljava/lang/String;Lcom/unity3d/player/d;)V

    iput-boolean v2, p0, Lcom/unity3d/player/GoogleVrProxy;->f:Z

    iput-boolean v2, p0, Lcom/unity3d/player/GoogleVrProxy;->g:Z

    iput-object v1, p0, Lcom/unity3d/player/GoogleVrProxy;->h:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    iput-object v1, p0, Lcom/unity3d/player/GoogleVrProxy;->j:Landroid/view/SurfaceView;

    new-instance v0, Lcom/unity3d/player/GoogleVrProxy$a;

    invoke-direct {v0, p0}, Lcom/unity3d/player/GoogleVrProxy$a;-><init>(Lcom/unity3d/player/GoogleVrProxy;)V

    iput-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iput-object v1, p0, Lcom/unity3d/player/GoogleVrProxy;->l:Ljava/lang/Thread;

    new-instance v0, Lcom/unity3d/player/GoogleVrProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/GoogleVrProxy$1;-><init>(Lcom/unity3d/player/GoogleVrProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->m:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->initVrJni()V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/GoogleVrProxy;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a(Lcom/unity3d/player/GoogleVrProxy;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/GoogleVrProxy;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iput-boolean p1, v0, Lcom/unity3d/player/GoogleVrProxy$a;->d:Z

    return-void
.end method

.method private static a(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/ClassLoader;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.unity3d.unitygvr.GoogleVR"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/unity3d/player/m;

    invoke-direct {v4, v2, v3}, Lcom/unity3d/player/m;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string v2, "initialize"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Activity;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Landroid/view/SurfaceView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-class v6, Landroid/os/Handler;

    aput-object v6, v3, v5

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "deinitialize"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "load"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v3, v5

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "enable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "unload"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "pause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "resume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "getGvrLayout"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "getVideoSurfaceId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "getVideoSurface"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception initializing GoogleVR from Unity library. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/unity3d/player/GoogleVrProxy;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/unity3d/player/GoogleVrProxy;)Lcom/unity3d/player/GoogleVrProxy$a;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    return-object v0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/unity3d/player/GoogleVrProxy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->d()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/unity3d/player/GoogleVrProxy;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v1, v1, Lcom/unity3d/player/GoogleVrProxy$a;->f:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/unity3d/player/GoogleVrProxy$a;->f:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final native initVrJni()V
.end method

.method private final native isQuiting()Z
.end method

.method private final native setVrVideoTransform([[F)V
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "android.intent.extra.VR_LAUNCH"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy;->g:Z

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->a:Z

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;Landroid/view/SurfaceView;Ljava/lang/Runnable;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const-string v0, "Invalid parameters passed to Google VR initiialization."

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy$a;->b()V

    iput-object p2, p0, Lcom/unity3d/player/GoogleVrProxy;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/unity3d/player/GoogleVrProxy;->h:Ljava/lang/Runnable;

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/unity3d/player/GoogleVrProxy;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Google VR requires a device that supports an api version of 19 (KitKat) or better."

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/unity3d/player/GoogleVrProxy;->g:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/unity3d/player/GoogleVrProxy;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Daydream requires a device that supports an api version of 24 (Nougat) or better."

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const-class v0, Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->a(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/m;

    const-string v3, "initialize"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    iget-boolean v6, p0, Lcom/unity3d/player/GoogleVrProxy;->g:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/unity3d/player/GoogleVrProxy;->m:Landroid/os/Handler;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-nez v0, :cond_5

    const-string v0, "Unable to initialize GoogleVR library."

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while trying to intialize Unity Google VR Library. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_5
    iput-object p3, p0, Lcom/unity3d/player/GoogleVrProxy;->j:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iput-boolean v2, v0, Lcom/unity3d/player/GoogleVrProxy$a;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->d:Ljava/lang/String;

    move v0, v2

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/unity3d/player/GoogleVrProxy;->resumeGvrLayout()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->j:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->j:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :cond_0
    return-void
.end method

.method public deregisterGoogleVrVideoListener(Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onSurfaceUnavailable()V

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected getVideoSurface()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v1, v1, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/m;

    const-string v2, "getVideoSurface"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception caught while Getting GoogleVR Video Surface. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getVideoSurfaceId()I
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/m;

    const-string v2, "getVideoSurfaceId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception caught while getting Video Surface ID from GoogleVR. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method protected loadGoogleVr(ZZZZZ)J
    .locals 10

    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->a:Z

    if-nez v0, :cond_0

    move-wide v0, v8

    :goto_0
    return-wide v0

    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    const-string v0, "Daydream"

    :goto_1
    iput-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->d:Ljava/lang/String;

    new-instance v0, Lcom/unity3d/player/GoogleVrProxy$2;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/player/GoogleVrProxy$2;-><init>(Lcom/unity3d/player/GoogleVrProxy;Ljava/util/concurrent/atomic/AtomicLong;ZZZZZ)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->runOnUiThreadWithSync(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "Google VR had a fatal issue while loading. VR will not be available."

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->reportError(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    const-string v0, "Cardboard"

    goto :goto_1
.end method

.method protected pauseGvrLayout()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;

    invoke-interface {v0}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onSurfaceUnavailable()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/m;

    const-string v1, "pause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    goto :goto_0
.end method

.method public registerGoogleVrVideoListener(Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/unity3d/player/GoogleVrProxy;->getVideoSurface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onSurfaceAvailable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method protected resumeGvrLayout()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->a:Lcom/unity3d/player/m;

    const-string v1, "resume"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iput-boolean v3, v0, Lcom/unity3d/player/GoogleVrProxy$a;->e:Z

    goto :goto_0
.end method

.method protected setGoogleVrModeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->b:Lcom/unity3d/player/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->isQuiting()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/unity3d/player/GoogleVrProxy;->e()V

    :cond_2
    new-instance v0, Lcom/unity3d/player/GoogleVrProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/GoogleVrProxy$3;-><init>(Lcom/unity3d/player/GoogleVrProxy;Z)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setVideoLocationTransform([F)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x4

    filled-new-array {v6, v6}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_1

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_0

    aget-object v4, v0, v3

    mul-int/lit8 v5, v3, 0x4

    add-int/2addr v5, v1

    aget v5, p1, v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->setVrVideoTransform([[F)V

    return-void
.end method

.method protected unloadGoogleVr()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/unity3d/player/GoogleVrProxy;->setGoogleVrModeEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iget-boolean v0, v0, Lcom/unity3d/player/GoogleVrProxy$a;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->k:Lcom/unity3d/player/GoogleVrProxy$a;

    iput-boolean v1, v0, Lcom/unity3d/player/GoogleVrProxy$a;->c:Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/GoogleVrProxy;->j:Landroid/view/SurfaceView;

    new-instance v0, Lcom/unity3d/player/GoogleVrProxy$4;

    invoke-direct {v0, p0}, Lcom/unity3d/player/GoogleVrProxy$4;-><init>(Lcom/unity3d/player/GoogleVrProxy;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleVrProxy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
